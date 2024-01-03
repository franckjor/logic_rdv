import 'package:flutter/material.dart';

class _IntroText extends StatelessWidget {
  const _IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24),
      child: Column(
        children: [
          Image.asset(
            'assets/images/splash_big.png',
            width: 150,
            height: 90,
          ),
          Container(
            child: Text(
              'Rechercher votre \n Praticien',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Container(
            child: Text(
              'Trouvez tous les praticiens près de chez \n vous et contactez les en un instant',
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        ],
      ),
    );
  }
}
