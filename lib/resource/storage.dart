import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
class StorageMethods{
  FirebaseStorage _storage = FirebaseStorage.instance;
  FirebaseAuth _auth = FirebaseAuth.instance;
  Future<String> uploadToStorage(String name, Uint8List file) async
  {
Reference ref = _storage.ref().child(name).child(_auth.currentUser!.uid);
UploadTask uploadTask = ref.putData(file);
TaskSnapshot snap= await uploadTask;

String downloadUrl = await snap.ref.getDownloadURL();
return downloadUrl;

  }
}