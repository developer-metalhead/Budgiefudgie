import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../constants.dart';

class boxx extends StatelessWidget {
  var h = 200.0;
  final Widget wid;

  boxx({Key? key, required this.wid,required this.h}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: h,
        decoration: BoxDecoration(
            gradient: LinearGradient(
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
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            wid,
          ],
        ));
  }
}
