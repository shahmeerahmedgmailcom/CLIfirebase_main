
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class verifyCode extends StatefulWidget {
  const verifyCode({super.key});

  @override
  State<verifyCode> createState() => _verifyCodeState();
}

class _verifyCodeState extends State<verifyCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Verify Code'),
      ),
      body: Column(
        children: [
          
        ]),
    );
  }
}