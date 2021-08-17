import 'package:flutter/material.dart';

class SignPage extends StatelessWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final SignIDtextController = new TextEditingController();
    // ignore: non_constant_identifier_names
    final TextEditingController SignPWtextController =
        new TextEditingController();
    // ignore: non_constant_identifier_names
    final TextEditingController SignPWAAgaintextController =
        new TextEditingController();

    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;
    // ignore: non_constant_identifier_names
    var SignBoxwidth = displayWidth * 0.9;
    // ignore: non_constant_identifier_names
    var SignBoxHeight = displayHeight * 0.05;

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
                  Icons.person,
                  size: 70,
                  color: Color(0xff6B95BB),
                ),
                Text(
                  "회원가입",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff6B95BB),
                  ),
                ),
                SizedBox(
                  height: displayHeight * 0.04,
                ),
                Form(
                    child: Column(
                  children: [
                    Container(
                      width: SignBoxwidth,
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
                        controller: SignIDtextController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '아이디를 등록하세요.',
                          hintStyle:
                              TextStyle(color: Color(0xff6B95BB), fontSize: 18),
                          prefixIcon: Icon(
                            Icons.mail_outline,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {
                                print("Tap");
                              },
                              child: Text(
                                "중복확인",
                                style: TextStyle(fontSize: 15),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: SignBoxwidth,
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
                        controller: SignPWtextController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '비밀번호를 등록하세요.',
                          hintStyle:
                              TextStyle(color: Color(0xff6B95BB), fontSize: 18),
                          prefixIcon: Icon(
                            Icons.settings,
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
                      width: SignBoxwidth,
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
                        controller: SignPWAAgaintextController,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '비밀번호를 한번 더 입력하세요.',
                          hintStyle:
                              TextStyle(color: Color(0xff6B95BB), fontSize: 18),
                          prefixIcon: Icon(
                            Icons.settings,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                )),
                SizedBox(
                  height: displayHeight * 0.1,
                ),
                GestureDetector(
                  onTap: () {
                    print(SignIDtextController.text);
                    print(SignPWtextController.text);
                    print(SignPWAAgaintextController.text);
                    Navigator.popAndPushNamed(context, '/Login');
                  },
                  child: Container(
                    width: SignBoxwidth,
                    height: SignBoxHeight,
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
                      "회원가입",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
