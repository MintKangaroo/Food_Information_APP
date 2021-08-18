import 'package:shared_preferences/shared_preferences.dart';

class UserData {
  // ignore: non_constant_identifier_names
  String ID = "";
  // ignore: non_constant_identifier_names
  String Password = "";
  // ignore: non_constant_identifier_names
  String Email = "";

  CheckData() async {
    final prefs = await SharedPreferences.getInstance();
    final ID = prefs.getString("ID") ?? null;
    print(ID);
    if (ID != null) {
      return "Sucess";
    } else {
      return "Failed";
    }
  }

  AutoLogin(String ID, String PW) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("ID", ID);
    prefs.setString("PW", PW);
    print("자동로그인을 시작합니다.");
  }

  LogOutData() async {
    final prefs = await SharedPreferences.getInstance();
    print("로그아웃됩니다.");
    prefs.clear();
  }
}
