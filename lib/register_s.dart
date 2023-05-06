import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled1/resource/auth_stuff.dart';
import 'package:untitled1/resource/boxes.dart';
import 'package:untitled1/resource/ss.dart';
import 'package:untitled1/resource/textbox.dart';
import 'package:untitled1/resource/util.dart';

import 'constants.dart';

class RegisterS extends StatefulWidget {
  RegisterS({Key? key}) : super(key: key);

  @override
  State<RegisterS> createState() => _RegisterSState();
}

class _RegisterSState extends State<RegisterS> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _usercontroller = TextEditingController();
  Uint8List? _imagee;

  void selectImage() async{
   Uint8List pic =  await pickImage(ImageSource.gallery);
   setState(() {
_imagee = pic;
   });

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
                        height: 550,
                        width: 400,
                        decoration: BoxDecoration(
                            color: third,
                            borderRadius: BorderRadiusDirectional.vertical(
                                top: Radius.circular(20),
                                bottom: Radius.circular(20))),
                      ),
                      Container(
                        height: 540,
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
                          Stack(
                            alignment: Alignment.center,
                            children: [_imagee!=null?CircleAvatar(
                              radius: 64,
                              backgroundImage: MemoryImage(_imagee!))
                              :CircleAvatar(
                                radius: 64,
                                backgroundImage: NetworkImage(
                                    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.wired.com%2F2015%2F06%2Ffacebook-can-recognize-even-dont-show-face%2F&psig=AOvVaw0OtFjy2zTXIrrfBjbD1-tj&ust=1679478693518000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKiTxunf7P0CFQAAAAAdAAAAABAE'),
                              ),
                              Positioned(
                                child: IconButton(
                                    onPressed: selectImage,
                                    icon: const Icon(Icons.add_a_photo),color: thirdhigh,iconSize: 35,),
                                bottom: -10,left:80 ,
                              )
                            ],
                          ),
                          spacee(),
                          SizedBox(width: textw,
                            child: Padding(
                                padding: EdgeInsetsDirectional.symmetric(
                                    horizontal: 30),
                                child: TextFieldInput(
                                    textEditingController: _emailcontroller,
                                    hintText: "Enter email",
                                    textInputType:
                                        TextInputType.emailAddress)),
                          ),
                          spacee(),
                          SizedBox(width: textw,
                            child: Padding(
                                padding: EdgeInsetsDirectional.symmetric(
                                    horizontal: 30),
                                child: TextFieldInput(
                                    textEditingController: _usercontroller,
                                    hintText: "Enter username",
                                    textInputType: TextInputType.text)),
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
                          InkWell(
                            onTap: () => AuthMethods().signUpUser(email: _emailcontroller.text, password: _passwordcontroller.text, username: _usercontroller.text,file: _imagee!),
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: boxx(
                                    h: 50,
                                    wid: Padding(
                                      padding: EdgeInsetsDirectional.symmetric(
                                          horizontal: space),
                                      child: const Text(
                                        "Register",
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
