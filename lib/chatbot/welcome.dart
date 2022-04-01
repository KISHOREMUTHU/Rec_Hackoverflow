import 'package:firebase_auth/firebase_auth.dart';

String commands = """

!consult : To book a consultation slot.\n
!news    : To know about current health news.\n
!bmi     : To calculate your BMI.\n

""";

List welcomeMsg() {
  final User? user = FirebaseAuth.instance.currentUser;
  String wlcum = "Hi ${user!.displayName}, I am Veronica :)";

  String cmnd = "Type !commands for basic commands";

  return [wlcum, cmnd];
}
