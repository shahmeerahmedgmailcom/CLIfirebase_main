import 'dart:async';
import 'dart:js';

import 'package:clifirebase/Auth/Login-Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../post/postScreen.dart';

class SplashService {
  void isLogin(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    final user = _auth.currentUser;
    if ( user!= null){
        Timer(
        const Duration(seconds: 3),
        () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => postScreen()))
            });
    }else{
      Timer(
        const Duration(seconds: 3),
        () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loginScreen()))
            });


    }
    
  }
}
