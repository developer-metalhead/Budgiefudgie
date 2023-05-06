import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/resource/auth_stuff.dart';
import 'package:untitled1/resource/boxes.dart';
import 'package:untitled1/resource/ss.dart';
import 'package:untitled1/resource/stuff.dart';
import 'package:untitled1/resource/textbox.dart';
import 'constants.dart';

class DashBoardA extends StatefulWidget {
  const DashBoardA({Key? key}) : super(key: key);

  @override
  State<DashBoardA> createState() => _DashBoardAState();
}

class _DashBoardAState extends State<DashBoardA> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  TextEditingController _abcd = TextEditingController();
  final TextEditingController _tot = TextEditingController();
  var _coll = thirdhigh;
  var _bagcol = secondary;
  var _coll1 = thirdhigh;
  var _bagcol1 = secondary;
  double _haa = 0.0;
  double _haa1 = 0.0;
  int botbar =0;
  double _hii = 0.0;
  double amm = 2000.0;
  String aabc = DateTime.now().toString();
  int sign = 0;
  void apple() async {
    String ss = await AuthMethods().ontapp(_abcd.text);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: fourth,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 28)),
                    Text(
                      "Budgie",
                      style: TextStyle(
                          color: third, fontSize: 25, fontFamily: 'Markbold'),
                    ),
                  ]),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
              ),
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                          "https://wallpapers-clan.com/wp-content/uploads/2022/08/default-pfp-19.jpg")),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Stack(children: [
                Stack(
                  children: [
                    Stack(children: [
                        Padding(
                          padding: EdgeInsetsDirectional.symmetric(
                              vertical: 40, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CardSm(
                                    a: 1000,
                                    b: 1000,
                                    c: "Budget",
                                    d: "Remaining",
                                  ),
                                  CardSm(
                                    a: 1000,
                                    b: 1000,
                                    c: "Savings",
                                    d: "debt",
                                  )
                                ],
                              ),
                              spacee(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Text(
                                  "Total balance",
                                  style: TextStyle(
                                      color: third,
                                      fontSize: 20,
                                      fontFamily: 'Markbold'),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("$amm",
                                            style: TextStyle(
                                                color: secondary,
                                                fontSize: 60,
                                                fontFamily: 'Markbold')),
                                        Spacer(),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (_hii == 0.0)
                                                _hii = 60.0;
                                              else
                                                _hii = 0.0;
                                            });
                                          },
                                          child: Container(
                                            height: 80,
                                            width: 60,
                                            child: Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              color: thirdhigh,
                                            ),
                                            decoration: BoxDecoration(
                                                color: secondary,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        )
                                      ],
                                    ),
                                    AnimatedContainer(
                                      duration: const Duration(milliseconds: 300),
                                      height: _hii,
                                      child: SingleChildScrollView(
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  sign = 1;
                                                  if (_bagcol == secondary) {
                                                    _bagcol = thirdhigh;
                                                    _coll = secondary;
                                                  } else {
                                                    _coll = thirdhigh;
                                                    _bagcol = secondary;
                                                  }
                                                  if (_bagcol1 == thirdhigh) {
                                                    _coll1 = thirdhigh;
                                                    _bagcol1 = secondary;
                                                  }
                                                });
                                              },
                                              child: Container(
                                                height: 40,
                                                width: 30,
                                                child: Icon(
                                                  Icons.remove,
                                                  color: _coll,
                                                ),
                                                decoration: BoxDecoration(
                                                    color: _bagcol,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .symmetric(horizontal: 15),
                                                  child: TextFieldInput(
                                                      textEditingController: _tot,
                                                      hintText: "Add amount",
                                                      textInputType:
                                                          TextInputType.number)),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  sign = 0;
                                                  if (_bagcol1 == secondary) {
                                                    _bagcol1 = thirdhigh;
                                                    _coll1 = secondary;
                                                  } else {
                                                    _coll1 = thirdhigh;
                                                    _bagcol1 = secondary;
                                                  }
                                                  if (_bagcol == thirdhigh) {
                                                    _coll = thirdhigh;
                                                    _bagcol = secondary;
                                                  }
                                                });
                                              },
                                              child: Container(
                                                height: 40,
                                                width: 30,
                                                child: Icon(
                                                  Icons.add,
                                                  color: _coll1,
                                                ),
                                                decoration: BoxDecoration(
                                                    color: _bagcol1,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            Spacer(),
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if (sign == 0) {
                                                    amm = amm +
                                                        double.parse(_tot.text);
                                                  } else {
                                                    amm = amm -
                                                        double.parse(_tot.text);
                                                  }
                                                });
                                              },
                                              child: Container(
                                                height: 40,
                                                width: 60,
                                                child: Icon(
                                                  Icons.check,
                                                  color: thirdhigh,
                                                ),
                                                decoration: BoxDecoration(
                                                    color: secondary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CardB(
                                    a: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Text("Aryan"))),
                              )
                            ],
                          ),
                        ),
                      ]),

                  ],
                ), Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Stack(alignment: Alignment.center, children: [SingleChildScrollView(scrollDirection: Axis.vertical,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 800),
                      height: _haa1,
                      color: thirdop,
                    ),
                  ),
                    SingleChildScrollView(scrollDirection: Axis.vertical,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 800),
                        height: _haa,
                        color: secondary,
                      ),
                    ),
                    Positioned(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(backgroundColor: secondary, radius: 40),
                          Positioned(
                            child: IconButton(
                                onPressed: () {setState(() {
                                  if(botbar == 0)
                                    {
                                  _haa = 300;
                                  _haa1 = MediaQuery.of(context).size.height;
                                    botbar = 1;}
                                  else
                                    {_haa1 = 0;
                                      _haa = 0;
                                      botbar = 0;
                                    }
                                });},
                                icon: Icon(
                                  Icons.add,
                                  color: thirdhigh,
                                ),
                                splashColor: thirdhigh,
                                splashRadius: 50),
                          )
                        ],
                      ),
                    ),
                  ]),
                )

              ],),
            )));
  }
}
