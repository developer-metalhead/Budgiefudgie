import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constants.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:untitled1/resource/ss.dart';

class Budgie extends StatefulWidget {

  const Budgie({Key? key}) : super(key: key);

  @override

  State<Budgie> createState() => _BudgieState();
}

class _BudgieState extends State<Budgie> {

  String username = " ";
  String pfppath = " ";
  @override
 void initState(){
  super.initState();
  getUserandpfp();
}
  void getUserandpfp() async{
    DocumentSnapshot snap = await FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).get();

    setState(() {
      username = (snap.data() as Map<String, dynamic>)!['username'];
      pfppath = (snap.data() as Map<String, dynamic>)!['photoUrl'];
    });


  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: primary,
            //   appBar: AppBar(title: Text("Budgie",style: TextStyle(color: thirdhigh),),backgroundColor: primary,)
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
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
                        children: [
                          Text(
                            "Budgie",
                            style: TextStyle(color: thirdhigh, fontSize: 30),
                          )
                        ,Text(
                            '$username',
                            style: TextStyle(color: thirdhigh, fontSize: 30),
                          ),CircleAvatar(
                            radius: 64,
                            backgroundImage: NetworkImage(
                                pfppath))],
                      )),
                  Container(
                    height: space,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: spadding),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: space,
                          ),
                          Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: spadding),
                              child: Container(
                                height: 200,
                                child: Text(
                                  "Budgie",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                decoration: BoxDecoration(
                                    color: secondary,
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: third,
                                          offset: Offset(0, -2),
                                          spreadRadius: 0.1,
                                          blurRadius: 10)
                                    ]),
                              )),
                          Container(
                            height: space,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.symmetric(
                                horizontal: spadding),
                            child: Neumorphic(
                              child: Padding(
                                padding: EdgeInsetsDirectional.all(spadding),
                                child: Text(
                                  "Budgie",
                                  style:
                                      TextStyle(color: thirdhigh, fontSize: 30),
                                ),
                              ),
                              style: NeumorphicStyle(
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(20.0)),
                                  color: secondary,
                                  depth: 4,
                                  lightSource: LightSource.top,
                                  intensity: 1),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: third,
                        borderRadius: BorderRadiusDirectional.vertical(
                            top: Radius.circular(20)),
                      ),
                    ),
                  )
                  /*Container(
              color: third,
              child: Text(
                "Something",
                style: const TextStyle(color: secondary,fontSize: 50),
                textAlign: TextAlign.center,
              )) */
                ],
              )
            ])));
  }
}
