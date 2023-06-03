import 'package:clifirebase/UI/splash-screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
title: 'Flutter Demo',

debugShowCheckedModeBanner: false,
theme: ThemeData(primarySwatch:Colors.indigo ),
home: splashScreen(),

    );
  }
}