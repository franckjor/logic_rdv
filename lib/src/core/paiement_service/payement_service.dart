import 'dart:convert';

import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/appointment_function/appointment_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/appointment_function/create_appointment_function.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';

createPaymentIntent(
    String amount, String currency, String stripeClientSecret) async {
  try {
    //Request body
    Map<String, dynamic> body = {
      'amount': amount,
      'currency': currency,
    };

    //Make post request to Stripe
    var response = await http.post(
      Uri.parse('https://api.stripe.com/v1/payment_intents'),
      headers: {
        'Authorization': 'Bearer ${stripeClientSecret}',
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      body: body,
    );
    return json.decode(response.body);
  } catch (err) {
    throw Exception(err.toString());
  }
}

class StripeTransactionResponse {
  String message;
  bool success;

  StripeTransactionResponse({
    required this.message,
    required this.success,
  });
}

class StripeService {
  static init() {
    //Stripe.merchantIdentifier = 'test';
    //Stripe.publishableKey = 'pk_test_hZFvrVBKMDFPgrfkEattC9yj00O3lDXRh1';
    Stripe.publishableKey = "pk_test_hZFvrVBKMDFPgrfkEattC9yj00O3lDXRh1";
    Stripe.merchantIdentifier = 'test';
  }

  static getErrorAndAnalyze(err) {
    String message = 'Something went wrong';
    if (err.code == 'cancelled') {
      message = 'Transaction canceled';
    }
    return StripeTransactionResponse(message: message, success: false);
  }

  static Future<StripeTransactionResponse> payNowHandler({
    required String stripeClientSecret,
    required BuildContext context,
    required String onclickAction,
    required String onclickData,
    required String tokenappointment,
    required String tokenuser,
    required String session,
    required String cardNumber,
    required int expMonth,
    required int expYear,
    required ProgressDialog ackRdvProgressDialog,
    required String newTokenappointment,
  }) async {
    try {
      // var paymentMethod = await StripePayment.paymentRequestWithCardForm(
      //     CardFormPaymentRequest());

      //final CreditCard testCard = CreditCard(
      //number: cardNumber,
      //expMonth: expMonth,
      //expYear: expYear,
      //);

      // var paymentMethod1 = await Stripe.instance.createPaymentMethod(PaymentMethodParams.fromJson({ 'number': cardNumber, 'expMonth': expMonth, 'expYear': expYear }));
      var response = null;
//      var response = await Stripe.instance.confirmSetupIntent(paymentIntentClientSecret, params);

      //Stripe.instance.
      //confirmPaymentIntent(PaymentIntent(
      //   clientSecret: stripeClientSecret,
      //   paymentMethodId: paymentMethod1.id));

      //print("response paiement : ${response.status}");
      var paymentIntent =
          await createPaymentIntent('100', 'USD', stripeClientSecret);
      //STEP 2: Initialize Payment Sheet
      await Stripe.instance
          .initPaymentSheet(
              paymentSheetParameters: SetupPaymentSheetParameters(

                  // testEnv: true,
                  paymentIntentClientSecret: paymentIntent[
                      'client_secret'], //Gotten from payment intent
                  style: ThemeMode.light,
                  merchantDisplayName: 'LogicRdv'))
          .then((value) {});
      try {
        await Stripe.instance.presentPaymentSheet().then((value) {
          //Clear paymentIntent variable after successful payment
          paymentIntent = null;
          return StripeTransactionResponse(
              message: 'Transaction failed', success: false);
        }).onError((error, stackTrace) {
          throw Exception(error);
        });
      } on StripeException catch (e) {
        print('Error is:---> $e');
        return StripeTransactionResponse(
            message: 'Transaction failed', success: false);
      } catch (e) {
        print('$e');
        return StripeTransactionResponse(
            message: 'Transaction failed', success: false);
      }
      if (response.status == "requires_capture") {
        confirmAppointmentWithTc(
          context: context,
          action: onclickAction,
          data: onclickData,
          session: session,
          tokenAppointment: tokenappointment,
          tokenUser: tokenuser,
        );
      }
      if (response.status == 'succeeded') {
        print("Transaction succeful");
        return StripeTransactionResponse(
            message: 'Transaction succeful', success: true);
      } else {
        print("Transaction failed");
        return StripeTransactionResponse(
            message: 'Transaction failed', success: false);
      }
    } catch (error) {
      cancelAppointment(
        context: context,
        tokenUser: tokenuser,
        tokenAppointment: newTokenappointment,
      );
      print("error: " + error.toString());
      return StripeTransactionResponse(
          message: 'Transaction failed in the catch block', success: false);
    }
  }
}
