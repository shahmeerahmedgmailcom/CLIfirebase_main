import 'package:clifirebase/Firebase-Services/splashServices.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  SplashService splashScreen = SplashService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreen.isLogin(context);
  }

  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 185, 247, 187),
      body: Center(
        child: Text('Firebase Tutorial' , style: TextStyle(
          fontSize: 40
        ) ,),
      ),
    );
  }
}
