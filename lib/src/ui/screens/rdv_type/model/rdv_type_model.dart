import 'package:logic_rdv_v0/src/common.dart';

class RdvTypeModel {
  final IconData icon;
  final String rdvType;
  final String lieuRdv;

  RdvTypeModel({
    required this.icon,
    required this.rdvType,
    required this.lieuRdv,
  });
}

List<RdvTypeModel> rdvList = [
  RdvTypeModel(
      icon: Icons.person_outline,
      lieuRdv: 'Au cabinet',
      rdvType: 'Consultation suivi medecin general'),
  RdvTypeModel(
      icon: Icons.video_call_outlined,
      lieuRdv: 'Téléconsultation',
      rdvType: 'Consultation suivi medecin general'),
  RdvTypeModel(
      icon: Icons.video_call_outlined,
      lieuRdv: 'Téléconsultation',
      rdvType: 'Téléconsultation'),
  RdvTypeModel(
      icon: Icons.person_outline,
      lieuRdv: 'Au cabinet',
      rdvType: 'Suivi nourisson jusqu\'a 24 mois'),
  RdvTypeModel(
      icon: Icons.person_outline,
      lieuRdv: 'Au cabinet',
      rdvType: 'Consultation urgente'),
  RdvTypeModel(
      icon: Icons.person_outline,
      lieuRdv: 'Au cabinet',
      rdvType: 'Gynecologie et Frottis'),
  RdvTypeModel(
      icon: Icons.person_outline,
      lieuRdv: 'Au cabinet',
      rdvType: 'Pose sterilet'),
  RdvTypeModel(
      icon: Icons.person_outline, lieuRdv: 'Au cabinet', rdvType: 'Pbm Psy'),
  RdvTypeModel(
      icon: Icons.person_outline,
      lieuRdv: 'Au cabinet',
      rdvType: 'Vacination Astrazeneca'),
  RdvTypeModel(
      icon: Icons.person_outline, lieuRdv: 'Au cabinet', rdvType: 'Urgence'),
  RdvTypeModel(
      icon: Icons.person_outline, lieuRdv: 'Au cabinet', rdvType: 'Ordonnace'),
  RdvTypeModel(
      icon: Icons.person_outline,
      lieuRdv: 'Au cabinet',
      rdvType: 'Permis de conduire'),
];