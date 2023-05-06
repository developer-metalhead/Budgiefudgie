import 'package:flutter/material.dart';
import 'package:untitled1/resource/auth_stuff.dart';
import 'package:untitled1/resource/boxes.dart';
import 'package:untitled1/resource/ss.dart';
import 'package:untitled1/resource/textbox.dart';

import 'constants.dart';

class LoginS extends StatelessWidget {
  LoginS({Key? key}) : super(key: key);
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  Future<void> loginUser()
  async {String res = await AuthMethods().loginUser(email: _emailcontroller.text, password: _passwordcontroller.text);

  if(res == "success")
  {

  }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: primary,
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: space,
                  ),
                  Padding(
                      padding:
                          EdgeInsetsDirectional.symmetric(horizontal: spadding),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Budgie",
                            style: TextStyle(
                                color: thirdhigh,
                                fontSize: 50,
                                fontFamily: 'Markbold'),
                          )
                        ],
                      )),
                  Container(
                    height: space,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        height: 450,
                        width: 400,
                        decoration: BoxDecoration(
                            color: third,
                            borderRadius: BorderRadiusDirectional.vertical(
                                top: Radius.circular(20),
                                bottom: Radius.circular(20))),
                      ),
                      Container(
                        height: 440,
                        width: 390,
                        decoration: BoxDecoration(
                            color: fourth,
                            // gradient: LinearGradient(
                            //   colors: [fourth, thirdhigh],
                            // begin: Alignment.topCenter,
                            //end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(0, 2),
                                  spreadRadius: 0.1,
                                  blurRadius: 10)
                            ]),
                      ),
                      Column(
                        children: [
                          SizedBox(width: textw,
                            child: Padding(
                                padding: EdgeInsetsDirectional.symmetric(
                                    horizontal: 30),
                                child: TextFieldInput(
                                    textEditingController: _emailcontroller,
                                    hintText: "Enter Email",
                                    textInputType:
                                        TextInputType.emailAddress)),
                          ),
                          spacee(),
                          SizedBox(width: textw,
                            child: Padding(
                                padding: EdgeInsetsDirectional.symmetric(
                                    horizontal: 30),
                                child: TextFieldInput(
                                    textEditingController: _passwordcontroller,
                                    hintText: "Enter password",
                                    textInputType: TextInputType.visiblePassword)),
                          ),
                          spacee(),
                          spacee(),
                          InkWell(onTap: loginUser,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: boxx(
                                    h: 50,
                                    wid: Padding(
                                      padding: EdgeInsetsDirectional.symmetric(
                                          horizontal: space),
                                      child: const Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: 'Markbold'),
                                      ),
                                    ))),
                          )
                        ],
                      )
                    ],
                  ),
                  Flexible(
                      child: Container(
                    height: 70,
                  ))
                ])));
  }
}
