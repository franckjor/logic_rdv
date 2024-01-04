class RdvDate {
  String? day;
  List<MomentRdv>? momentRdv;

  RdvDate({
    this.day,
    this.momentRdv,
  });
}

class MomentRdv {
  String? startedTime;
  String? doctorName;

  MomentRdv({
    this.startedTime,
    this.doctorName,
  });
}

List<MomentRdv> momentRdv = [
  MomentRdv(doctorName: 'Dr Fortin', startedTime: '09:40'),
  MomentRdv(doctorName: 'Dr Fortin', startedTime: '09:45'),
  MomentRdv(doctorName: 'Dr Fortin', startedTime: '10:00'),
  MomentRdv(doctorName: 'Dr Fortin', startedTime: '10:30'),
  MomentRdv(doctorName: 'Dr Fortin', startedTime: '11:15'),
  MomentRdv(doctorName: 'Dr Fortin', startedTime: '11:50'),
  MomentRdv(doctorName: 'Dr Fortin', startedTime: '12:15'),
  MomentRdv(doctorName: 'Dr Fortin', startedTime: '12:40'),
  MomentRdv(doctorName: 'Dr Fortin', startedTime: '13:30'),
  MomentRdv(doctorName: 'Dr Fortin', startedTime: '14:00'),
];
List<RdvDate> rdvMomentDate = [
  RdvDate(day: 'Lundi 01/06/2021', momentRdv: momentRdv),
  RdvDate(day: 'Mardi 02/06/2021', momentRdv: momentRdv),
  RdvDate(day: 'Mercredi 03/06/2021', momentRdv: momentRdv),
  RdvDate(day: 'Jeudi 04/06/2021', momentRdv: momentRdv),
  RdvDate(day: 'Vendredi 05/06/2021', momentRdv: momentRdv),
  RdvDate(day: 'Samedi 06/06/2021', momentRdv: momentRdv),
  RdvDate(day: 'Dimanche 07/06/2021', momentRdv: momentRdv),
];
