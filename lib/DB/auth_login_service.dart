import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';



class AuthServiceLogin{
  String  emailDB;
  String  passwordDB;
  String key;
String? uid;

  AuthServiceLogin(this.emailDB,this.passwordDB,this.key);

  void checkDB(){
    print(emailDB);
    print(passwordDB);
    print(key);

    const doctorCode="1572003B";
    if(key !=doctorCode){
      throw Exception("The key is not correct");

    }
    else{
      print("correct key");
    }
}

  Future<bool> login() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailDB, password: passwordDB,);

      uid = userCredential.user?.uid;
      return true;

    } catch (e) {
      print("Login failed with error: $e");
      uid = null;
      return false;
    }
  }

  String? getUid() {
    return uid;
  }
}
