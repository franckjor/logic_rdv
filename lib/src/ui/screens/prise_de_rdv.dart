import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';
import 'package:universal_io/io.dart';

bool get isWeb => foundation.kIsWeb;

class PriseDeRdv extends StatefulWidget {
  const PriseDeRdv({Key? key}) : super(key: key);

  @override
  _PriseDeRdvState createState() => _PriseDeRdvState();
}

class _PriseDeRdvState extends State<PriseDeRdv> {
  String _email = '';
  String _fullName = '';

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      endDrawer: MyDrawer(
        page: '1',
        email: _email,
        fullNme: _fullName, tokenUser: '', notification: false,
      ),
      appBar: AdaptativeAppBar(
        title: 'Liste des Medecins',
        actions: [
          IconButton(
            icon: Platform.isAndroid || isWeb
                ?  Icon(
                    MdiIcons.accountCircle,
                    color: Colors.white,
                  )
                :  Icon(
                    CupertinoIcons.person_alt_circle_fill,
                    color: Colors.white,
                  ),
            splashRadius: 20,
            onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
          ),
        ], leading: null,
      ),
      body: SingleChildScrollView(
        primary: true,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Transform.rotate(
                      child: Icon(
                        Icons.calendar_today,
                        size: 38,
                      ),
                      angle: -.5,
                    ),
                    const SizedBox(height: 8),
                    Text(
                        'Vous n\'avez pas de rendez-vous à venir pour l\'instant'),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Prendre un Rendez-vous rapide'.toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Rendez-vous passées:',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              ListView.builder(
                itemCount: 8,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, i) => _RdvItem(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RdvItem extends StatelessWidget {
  const _RdvItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 35,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: Color(0xFF334257),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Transform.rotate(
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size: 14,
                      ),
                      angle: -.5,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Mercredi 21 Juillet 2020',
                      style: TextStyle(
                        fontSize: 13.5,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                     Icon(
                      Icons.alarm,
                      size: 14,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      '09:00',
                      style: TextStyle(
                        fontSize: 13.5,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 20,
            ),
            title: Text('Dr Thomas Fortin'),
            subtitle: Text('Chirugien dentaire'),
            trailing: Icon(Icons.arrow_forward_ios, size: 20),
          ),
          Container(
            height: .5,
            width: double.infinity,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                 Icon(Icons.person),
                const SizedBox(width: 8),
                const Text(
                  'Jules Cesar',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: .5,
            width: double.infinity,
            color: Colors.grey,
          ),
          TextButton(
            onPressed: () {},
            child: Text('Reprendre Rendez-vous'.toUpperCase()),
          ),
        ],
      ),
    );
  }
}
