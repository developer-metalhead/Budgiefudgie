

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/resource/storage.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<String> signUpUser(
      {required String email,
      required String password,
      required String username,
      required Uint8List file}) async {
    String photoUrl = await StorageMethods().uploadToStorage('profilePic', file);
    String res = 'Error';
    if (email.isNotEmpty ||
        password.isNotEmpty ||
        username.isNotEmpty
        ||file != null) {
      UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
     await _firestore
          .collection('users')
          .doc(cred.user!.uid)
          .set({'username': username,'photoUrl':photoUrl});
      res = 'success';
    }
    return res;
  }
  Future<String> loginUser({required String email,required String password}) async {
    String res = "error";
        try{
          if (email.isNotEmpty ||
              password.isNotEmpty
            ) ;{
              await _auth.signInWithEmailAndPassword(email: email, password: password);
              res = "success";

          }
        }catch(err){res = err.toString();}
    return res;



  }
  Future<String>ontapp(String as) async {
    final a = DateTime.now();
    _firestore.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).set({"transaction":{ "$a":as}},SetOptions(merge: true));
    DocumentSnapshot snap = await FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).get();
    Map<String, dynamic> fg =await (snap.data() as Map<String, dynamic>)!['transaction'];
    print(fg);
    return "a";
  }

}
