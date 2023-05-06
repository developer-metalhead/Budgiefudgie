import 'package:flutter/material.dart';
import 'package:untitled1/resource/ss.dart';
import 'package:untitled1/resource/stuff.dart';
import 'package:untitled1/resource/textbox.dart';

import 'constants.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);


  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  late AnimationController controller;
  late bool _displayFront;
  late bool _flipXAxis;
  @override
  initState() {
    super.initState();
    controller =
        BottomSheet.createAnimationController(this);
    controller.duration = Duration(milliseconds: 800);
    _displayFront = true;
    _flipXAxis = true;
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  TextEditingController _abcd = TextEditingController();
  final TextEditingController _tot = TextEditingController();
  var _coll = thirdhigh;
  var _bagcol = secondary;
  var _coll1 = thirdhigh;
  var _bagcol1 = secondary;
  double _haa = 0.0;
  double _haa1 = 0.0;
  int botbar = 0;
  double _hii = 0.0;
  double amm = 2000.0;
  String aabc = DateTime.now().toString();
  int sign = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fourth,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsetsDirectional.symmetric(horizontal: 28)),
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
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            spacee(),
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

            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 12,0),
              child: Text(
                "Total balance",
                style: TextStyle(
                    color: third, fontSize: 20, fontFamily: 'Markbold'),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("$amm",
                            style: TextStyle(
                                color: secondary,
                                fontSize: MediaQuery.of(context).size.height/15,
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
                                borderRadius: BorderRadius.circular(10)),
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
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                  padding: EdgeInsetsDirectional.symmetric(
                                      horizontal: 15),
                                  child: TextFieldInput(
                                      textEditingController: _tot,
                                      hintText: "Add amount",
                                      textInputType: TextInputType.number)),
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
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (sign == 0) {
                                    amm = amm + double.parse(_tot.text);
                                  } else {
                                    amm = amm - double.parse(_tot.text);
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
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                  child: Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: primary, borderRadius: BorderRadius.circular(30)),
                child: Text("Aryan"),
              )),
            ))
          ]),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height / 20,
          right: 0,
          left: 0,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(backgroundColor: secondary, radius: 40),
              Positioned(
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (botbar == 0) {
                          _haa = 3000;
                          _haa1 = MediaQuery.of(context).size.height;
                          botbar = 1;
                        } else {
                          _haa1 = 0;
                          _haa = 0;
                          botbar = 0;
                        }
                        showModalBottomSheet(shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),context: context, builder:(BuildContext context){return SizedBox(height: 500,child:Container(decoration: BoxDecoration(color: secondary,borderRadius: BorderRadiusDirectional.vertical(top: Radius.circular(30))) ));},transitionAnimationController: controller);
                      });
                    },
                    icon: Icon(
                      Icons.add,
                      color: thirdhigh,
                    ),
                    splashColor: secondary,
                    splashRadius: 50),
              )
            ],
          ),
        ),

      ]),
    );
  }
}
