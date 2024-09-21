import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthProvider extends ChangeNotifier{
  String? _Uid, _Email;

  String? get email => _Email;
  String? get uid => _Uid;

  FirebaseAuth _auth= FirebaseAuth.instance;

  Future<bool> createUserAccount(String email, String password) async{
    bool success=false;
    try{
      UserCredential userCredential= await _auth.createUserWithEmailAndPassword(email: email, password: password);
       if(userCredential != null){
        _Uid=userCredential.user!.uid;
        _Email=userCredential.user!.email!;
        return success=true;
       }
    }catch(e){

    }
   return success;
  }

  Future<bool> signInUserAccount(String email, String password) async{
    bool success=false;
    try{
      UserCredential userCredential= await _auth.signInWithEmailAndPassword(email: email, password: password);
       if(userCredential != null){
        _Uid=userCredential.user!.uid;
        _Email=userCredential.user!.email!;

        return success=true;
       }
    }catch(e){

    }
   return success;
  }

  void signOut() async{
    await _auth.signOut();
  }
}