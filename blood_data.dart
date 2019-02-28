class BloodData {
  static List<String> bloodGroup = ['A+',  'A-',  'B+',  'B-',  'AB+','AB-', 'O+',  'O-'];

  static List<bool> apd = [true, false, false, false, true, false, false, false];
  static List<bool> and = [true, true, false, false, true, true, false, false];
  static List<bool> bpd = [false, false, true, false, true, false, false, false];
  static List<bool> bnd = [false, false, true, true, true, true, false, false];
  static List<bool> abpd = [false, false, false, false, true, false, false, false];
  static List<bool> abnd = [false, false, false, false, true, true, false, false];
  static List<bool> opd = [true, false, true, false, true, false, true, false];
  static List<bool> ond = [true, true, true, true, true, true, true, true];

  static List<bool> apr = [true, true, false, false, false, false, true, true];
  static List<bool> anr = [false, true, false, false, false, false, false, true];
  static List<bool> bpr = [false, false, true, true, false, false, true, true];
  static List<bool> bnr = [false, false, false, true, false, false, false, true];
  static List<bool> abpr = [true, true, true, true, true, true, true, true];
  static List<bool> abnr = [false, true, false, true, false, true, false, true];
  static List<bool> opr = [false, false, false, false, false, false, true, true];
  static List<bool> onr = [false, false, false, false, false, false, false, true];
}
