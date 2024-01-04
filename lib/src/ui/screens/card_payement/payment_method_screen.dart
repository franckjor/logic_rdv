import 'package:logic_rdv_v0/src/core/paiement_service/payement_service.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';

import '../../../common.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  onItemPress(BuildContext context, int index) async {
    switch (index) {
      case 0:
        payViaNewCard(context);
        break;
      case 1:
        Navigator.pushNamed(context, RouteGenerator.existingCard);
        break;
    }
  }

  payViaNewCard(BuildContext context) async {
    ProgressDialog _progressDialog =
        new ProgressDialog(context, ProgressDialogType.Normal);
    _progressDialog.setMessage('chargement en cours ....');
    _progressDialog.show();
    // var response = await StripeService.payWithNewCard(
    //   amount: '15000',
    //   currency: 'USD',
    // );
    // flushBarSuccess(response.message, context);
    _progressDialog.hide();
  }

  @override
  void initState() {
    // StripeService.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdaptativeAppBar(
        leading: DefaultBackButton(),
        title: 'Méthode de paiement',
      ),
      body: Container(
        child: ListView.separated(
            itemBuilder: (context, i) {
              Icon? icon;
              Text? text;

              switch (i) {
                case 0:
                  icon = Icon(
                    Icons.add_circle,
                    color: AppColors.primaryColor,
                  );
                  text = Text('Paye avec une nouvelle carte');
                  break;
              }
              return InkWell(
                onTap: () => onItemPress(context, i),
                child: ListTile(
                  title: text,
                  leading: icon,
                ),
              );
            },
            separatorBuilder: (context, i) => Divider(),
            itemCount: 1),
      ),
    );
  }
}
