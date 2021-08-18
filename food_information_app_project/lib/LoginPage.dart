import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'LoginProcess.dart';
import 'UserData.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // ignore: non_constant_identifier_names
  final LoginIDtextController = new TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController LoginPWtextController =
      new TextEditingController();

  bool _isChecked = false;
  var DataSaveCheck = new UserData();

  

  @override
  Widget build(BuildContext context) {
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;
    // ignore: non_constant_identifier_names
    var LoginBoxwidth = displayWidth * 0.9;
    // ignore: non_constant_identifier_names
    var LoginBoxHeight = displayHeight * 0.05;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: displayHeight * 0.2,
                  ),
                  Icon(
                    Icons.vpn_key,
                    size: 70,
                    color: Color(0xff6B95BB),
                  ),
                  Text(
                    "로그인",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff6B95BB),
                    ),
                  ),
                  SizedBox(
                    height: displayHeight * 0.08,
                  ),
                  Form(
                    child: Column(
                      children: [
                        Container(
                          width: LoginBoxwidth,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(3.0, 3.0),
                                blurRadius: 10.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextFormField(
                            controller: LoginIDtextController,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '아이디를 입력하세요.',
                              hintStyle: TextStyle(
                                  color: Color(0xff6B95BB), fontSize: 18),
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                size: 30,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: LoginBoxwidth,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(3.0, 3.0),
                                blurRadius: 10.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextFormField(
                            controller: LoginPWtextController,
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '비밀번호를 입력하세요.',
                              hintStyle: TextStyle(
                                  color: Color(0xff6B95BB), fontSize: 18),
                              prefixIcon: Icon(
                                Icons.settings,
                                size: 30,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("아직 회원이 아닌가요?"),
                      TextButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(context, '/Sign');
                          },
                          child: Text("회원가입하기"))
                    ],
                  ),
                  SizedBox(
                    height: displayHeight * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            //Rebuild해주는 함수
                            _isChecked = !_isChecked;
                          });
                        },
                      ),
                      Text("로그인 상태 유지할래요.")
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      String results = LoginProcessFun(
                          LoginIDtextController.text,
                          LoginPWtextController.text);
                      print(results);
                      if(results == "Sucess"){
                        print(results);
                        DataSaveCheck.AutoLogin(LoginIDtextController.text, LoginPWtextController.text);
                        Navigator.popAndPushNamed(context, '/Main');
                      }
                      else{
                        print(results);
                        	ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('로그인에 실패했습니다.'),
                        ));
                      }
                    },
                    child: Container(
                      width: LoginBoxwidth,
                      height: LoginBoxHeight,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(3.0, 3.0),
                            blurRadius: 10.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                        color: Color(0xff6B95BB),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                          child: Text(
                        "로그인",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




