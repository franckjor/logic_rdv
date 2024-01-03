import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';

bool get isAndroid =>
    foundation.defaultTargetPlatform == TargetPlatform.android;

bool get isWeb => foundation.kIsWeb;

class ConditionDutilisation extends StatefulWidget {
  const ConditionDutilisation();

  @override
  _ConditionDutilisationState createState() => _ConditionDutilisationState();
}

class _ConditionDutilisationState extends State<ConditionDutilisation> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AdaptativeAppBar(
        leading: DefaultBackButton(),
        title: 'Conditions Générales D\'utilisation',
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 0),
          child: Column(
            children: [
              Container(
                child: Text(
                  'APPLICATION DES NOUVELLES POLITIQUE SUR LA PROTECTION DES DONNÉES PERSONNELLES',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'La protection des patients et des praticiens est une priorité pour LOGICRDV, l’entreprise souhaite établir une véritable relation de confiance afin d’assurer un service irréprochable.'
                  '\nLOGICRDV collecte les données personnelles des utilisateurs pour un service relationnel, afin de répondre au mieux aux attentes de chaque utilisateur.'
                  '\nDepuis le 25 mai 2018, la Règlementation portant sur les données personnelles évolue avec l\'entrée en application du Règlement Général sur la Protection des Données (RGPD).'
                  '\nAfin d’assurer une véritable protection des patients comme des professionnels, LOGICRDV s’engage à répondre aux nouvelles normes mis en vigueur à partir du 25 Mai 2018.'
                  '\nLOGICRDV garantie une protection totale des données et se charge de s’assurer de la mise en conformité du règlement européen, afin de faire comprendre et respecter les obligations.'
                  '\nLOGICRDV protège ses données via des serveurs répondants aux nouvelles norme en vigueurs. Les données sont hébergées par un prestataire de santé. Elle sont traitées de manière confidentielle et sécurisé dans une écriture codée et cryptée. Tout utilisateur reste propriétaire de ses données.'
                  '\nLOGICRDV ne collectera aucune donnée sans l’accord des utilisateurs ou des praticiens. Lors de l’inscription, les présentes conditions devront être validées par l’utilisateur pour autoriser LOGICRDV à collecter les données.'
                  '\nLOGICRDV conservera les données de l’utilisateur jusqu’à que ce dernier n’en décide autrement. Chaque utilisateur peut à n’importe quel moment demander l’accès à ses données, LOGICRDV s’engage alors à les communiquer en moins d’un mois.',
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'TYPE DE DONNÉES COLLECTÉES '
                      '\n- Adresse email, mot de passe '
                      '\n- Nom, Prénom, date de naissance '
                      '\n- Numéro de Téléphone '
                      '\n- Médecin traitant, rendez-vous pris, motif',
                      textAlign: TextAlign.justify,
                    ),
                    _SectionTitle(
                      title: '1. Les données que nous recueillons',
                    ),
                    _SectionContent(
                        content:
                            '\nLe but premier de la collecte de données personnelles (nom, prénom, adresse, email, numéros de téléphone) est de pouvoir vous identifier afin de vous proposer un service efficace, personnalisé et surtout sécurisé. Pour chaque champ d\'information, nous nous efforçons d\'indiquer si il doit être obligatoirement renseigné ou si il s\'agit d\'une information facultative. Vous avez toujours la possibilité de ne pas nous transmettre une information en choisissant de ne pas utiliser le service ou la fonction pour laquelle cette information est exigée. Les informations fournies peuvent être utilisées dans le but de rendre la navigation plus agréable pour l\'utilisateur et d\'améliorer nos prestations. Ces informations peuvent être utilisées pour l\'audit, les statistiques, la recherche et l\'analyse afin d\'assurer la maintenance, la protection, l\'amélioration et la promotion de nos services. Nous pouvons constituer un dossier personnel vous concernant, contenant les correspondances que vous nous envoyez, comme vos lettres ou emails, ou toute correspondance émanant d\'autres utilisateurs ou de tiers à propos de vos activités sur notre site ou de vos contributions sur notre site.'),
                    _SectionTitle(
                      title: '2. La diffusion de vos données',
                    ),
                    _SectionContent(
                        content:
                            '\nNotre but est de protéger la confidentialité de vos données personnelles. Ainsi, nous avons mis en œuvre des mesures appropriées pour assurer au mieux cette protection. Nous avons comme règle générale de ne vendre ou céder à quiconque les données personnelles fournies par nos utilisateurs.'
                            '\nLes données sont recueillies afin de vous offrir l\'usage des services proposés par notre portail.'),
                    _SectionTitle(
                      title: '3. La maîtrise de votre mot de passe',
                    ),
                    _SectionContent(
                        content:
                            '\nVous êtes responsable de tout acte entrepris à l\'aide de votre pseudo et de votre mot de passe. En conséquence, ne communiquez jamais votre mot de passe à des tiers. En perdant la maîtrise de votre mot de passe, vous risquez également de perdre le contrôle sur vos données personnelles et d\'être tenu par des obligations contractées en votre nom. Veuillez noter que nous ne vous demanderons jamais par e-mail de fournir des informations personnelles du type mot de passe, numéro de carte de crédit ou numéro de compte bancaire.'),
                    _SectionTitle(
                      title:
                          '4. Droit d\'accès et de rectification de vos données personnelles',
                    ),
                    _SectionContent(
                      content:
                          '\nConformément à la législation française en vigueur et plus particulièrement à la loi du 6 janvier 1978 dite "Informatique et Libertés", vous disposez d\'un droit d\'accès, de rectification et d\'opposition sur vos données personnelles. Vous vous engagez par ailleurs à mettre à jour vos données personnelles si nécessaire en utilisant les moyens mis à votre disposition à cet effet sur notre site. Vous pouvez poster un nouveau message afin d\'apporter toute correction, tout complément d\'information ou toute précision à votre message initial. Vos données personnelles pourront être conservées dans nos bases de données après la fermeture de votre compte, et ce, dans la seule finalité de résoudre tout litige, régler tout problème et faire appliquer nos Conditions d\'Utilisation. Ces données ne seront cependant plus accessibles en ligne.',
                    ),
                    _SectionTitle(
                      title: '5. Sécurité',
                    ),
                    _SectionContent(
                        content:
                            '\nNous mettons en œuvre différentes mesures de sécurité destinées à protéger la confidentialité de vos données personnelles et notamment éviter toute utilisation non autorisée de vos données par d\'autres utilisateurs. Toutefois, soyez conscient que la sécurité parfaite n\'existe pas sur l\'Internet.'),
                    _SectionTitle(
                      title: '6. Modifications',
                    ),
                    _SectionContent(
                      content:
                          '\nNous nous réservons la possibilité d\'apporter des modifications au présent Règlement sur le Respect de la vie privée en fonction de vos commentaires et de l\'évolution des règles que nous appliquons à la collecte et à la divulgation des données. Toutes modifications apportées au présent Règlement sur le Respect de la vie privée entreront en vigueur immédiatement. Il est donc recommandé de se référer régulièrement à la dernière version du Règlement sur le Respect de la vie privée en vigueur sur notre site. Si vous avez des questions, contactez nous via l\'onglet "Contactez-nous".',
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16)
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '\n$title',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}

class _SectionContent extends StatelessWidget {
  final String content;
  const _SectionContent({
    super.key,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '\n$content',
      textAlign: TextAlign.justify,
    );
  }
}
