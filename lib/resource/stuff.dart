import 'package:flutter/material.dart';

import '../constants.dart';
class CardSm extends StatelessWidget {

  CardSm({required this.a,required this.b,required this.c,required this.d,Key? key}) : super(key: key);
  var a = 2000;
  var b = 2000;
  var c = "Savings";
  var d = "debt";


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/20,horizontal: MediaQuery.of(context).size.width/25,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$c: ",
                  style: TextStyle(
                      color: softth,
                      fontSize: 20,
                      fontFamily: 'Markbold'),
                ),
                Text(
                  "₹$a",
                  style: TextStyle(
                      color: secondary,
                      fontSize: 20,
                      fontFamily: 'Markbold'),
                ),
              ],
            ),  Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$d: ",
                  style: TextStyle(
                      color: softth,
                      fontSize: 15,
                      fontFamily: 'Markbolda'),
                ),
                Text(
                  "₹$b",
                  style: TextStyle(
                      color: secondary,
                      fontSize: 15,
                      fontFamily: 'Markbolda'),
                ),

              ],
            ),

          ],
        ),
      ),decoration: BoxDecoration(color: primary,/*boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 2),
                      spreadRadius: 0.1,
                      blurRadius: 10)
                ]*/ borderRadius: BorderRadius.circular(30)),);

  }
}
class CardB extends StatelessWidget {
  CardB({required this.a, Key? key}) : super(key: key);
 Widget a;
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(scrollDirection: Axis.vertical,

      child: Container(  height: MediaQuery.of(context).size.height / 2.5
         ,width: double.infinity,child: a,decoration: BoxDecoration(color: primary,
                         borderRadius: BorderRadius.circular(30)),),
    )


    ;
  }
}
class CardSmA extends StatelessWidget {
  CardSmA({required this.a,required this.b,required this.c,required this.d,Key? key}) : super(key: key);
  var a = 2000;
  var b = 2000;
  var c = "Savings";
  var d = "debt";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/20,horizontal: MediaQuery.of(context).size.width/25,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$c: ",
                  style: TextStyle(
                      color: softth,
                      fontSize: 20,
                      fontFamily: 'Markbold'),
                ),
                Text(
                  "₹$a",
                  style: TextStyle(
                      color: primary,
                      fontSize: 20,
                      fontFamily: 'Markbold'),
                ),
              ],
            ),  Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$d: ",
                  style: TextStyle(
                      color: softth,
                      fontSize: 15,
                      fontFamily: 'Markbolda'),
                ),
                Text(
                  "₹$b",
                  style: TextStyle(
                      color: primary,
                      fontSize: 15,
                      fontFamily: 'Markbolda'),
                ),

              ],
            ),

          ],
        ),
      ),decoration: BoxDecoration(color: secondary,/*boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 2),
                      spreadRadius: 0.1,
                      blurRadius: 10)
                ]*/ borderRadius: BorderRadius.circular(30)),);


  }
}

