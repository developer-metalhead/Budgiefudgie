import 'package:flutter/material.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/resource/boxes.dart';
import 'package:untitled1/resource/ss.dart';

class Budg extends StatefulWidget {
  const Budg({Key? key}) : super(key: key);

  @override
  State<Budg> createState() => _BudgState();
}

class _BudgState extends State<Budg> {
  Widget a = Text('aa');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadiusDirectional.vertical(
                              top: Radius.circular(20)),
                          color: third,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                offset: Offset(0, 0),
                                spreadRadius: 0.2,
                                blurRadius: 10)
                          ]),
                      child: Container(
                        child: ListView(

                          children: [
                            Container(
                              height: space,
                            ),
                            Padding(
                                padding: const EdgeInsetsDirectional.symmetric(
                                    horizontal: 15),
                                child: Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                          colors: [fourth, thirdhigh],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                      borderRadius: BorderRadius.circular(20.0),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black,
                                            offset: Offset(0, 2),
                                            spreadRadius: 0.1,
                                            blurRadius: 10)
                                      ]),
                                  child: const Text(
                                    "",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                )),
                            spacee(),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: boxx(
                                    h: 100,
                                    wid: a = const Text(
                                      "Budgie",
                                      style: TextStyle(
                                          color: thirdhigh,
                                          fontSize: 50,
                                          fontFamily: 'Markbold'),
                                    ))),
                            spacee(),
                            Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: boxx(
                                    h: 100,
                                    wid: a = Text(
                                      "Budgie",
                                      style: TextStyle(
                                          color: thirdhigh,
                                          fontSize: 50,
                                          fontFamily: 'Markbold'),
                                    ))),
                            spacee(),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: boxx(
                                    h: 100,
                                    wid: a = const Text(
                                      "Budgie",
                                      style: TextStyle(
                                          color: thirdhigh,
                                          fontSize: 50,
                                          fontFamily: 'Markbold'),
                                    ))),
                            spacee(),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: boxx(
                                    h: 100,
                                    wid: a = const Text(
                                      "Budgie",
                                      style: TextStyle(
                                          color: thirdhigh,
                                          fontSize: 50,
                                          fontFamily: 'Markbold'),
                                    )))
                          ],
                        ),
                      )),
                ))
              ],
            )));
  }
}
