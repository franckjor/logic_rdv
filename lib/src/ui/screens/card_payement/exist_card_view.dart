import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/default_back_button.dart';
//import 'package:flutter_stripe/flutter_stripe.dart';

class ExistingCard extends StatefulWidget {
  const ExistingCard({super.key});

  @override
  _ExistingCardState createState() => _ExistingCardState();
}

class _ExistingCardState extends State<ExistingCard> {
  List cards = [
    {
      'cardNumber': '4242424242424242',
      'expiryDate': '04/24',
      'cardHolderName': 'Mami steph',
      'cvvCode': '424',
      'showBackView': false
    },
    {
      'cardNumber': '5555555555554444',
      'expiryDate': '04/23',
      'cardHolderName': 'Tracer',
      'cvvCode': '123',
      'showBackView': false
    }
  ];

  payViaAndExistingCard(BuildContext context, card) async {
    ProgressDialog _progressDialog =
        new ProgressDialog(context, ProgressDialogType.Normal);
    _progressDialog.setMessage('chargement en cour ....');
    _progressDialog.show();
    var expiredArray = card['expiryDate'].split('/');
    //CreditCard stripeCard = CreditCard(
    //  expMonth: int.parse(expiredArray[0]),
    //  number: card['cardNumber'],
    // expYear: int.parse(expiredArray[1]),
    //);
    // var response = await StripeService.payViaAndExistingCard(
    //   amount: '2500',
    //   currency: 'USD',
    //   card: stripeCard,
    // );
    // if (response.success == true) {
    //   flushBarSuccess(response.message, context);
    //   _progressDialog.hide();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdaptativeAppBar(
        leading: DefaultBackButton(),
        title: 'Carte existante',
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: cards.length,
            itemBuilder: (context, i) {
              return InkWell(
                onTap: () {
                  payViaAndExistingCard(context, cards[i]);
                },
                child: CreditCardWidget(
                  cardNumber: cards[i]['cardNumber'],
                  expiryDate: cards[i]['expiryDate'],
                  cardHolderName: cards[i]['cardHolderName'],
                  cvvCode: cards[i]['cvvCode'],
                  showBackView: cards[i]['showBackView'], onCreditCardWidgetChange: (CreditCardBrand ) {  },
                ),
              );
            }),
      ),
    );
  }
}
