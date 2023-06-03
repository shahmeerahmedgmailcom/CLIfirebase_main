import 'package:clifirebase/Auth/verifyCode.dart';
import 'package:clifirebase/Widgets/RoundButton.dart';
import 'package:clifirebase/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginWithPhone extends StatefulWidget {
  const loginWithPhone({super.key});

  @override
  State<loginWithPhone> createState() => _loginWithPhoneState();
}

class _loginWithPhoneState extends State<loginWithPhone> {
  bool loading = false;
  final _auth = FirebaseAuth.instance;
  final phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login With Phone'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          TextFormField(
            controller: phoneNumberController,
            decoration: InputDecoration(hintText: '+1 262 983 1243'),
          ),
          const SizedBox(
            height: 80,
          ),
          roundButton(
              title: 'Login',
              onTap: () {
                _auth.verifyPhoneNumber(
                  phoneNumber: phoneNumberController.text,
                  verificationCompleted: (_) {},
                  verificationFailed: (error) {
                    Utils().toastMessage(error.toString());
                  },
                  codeSent: (String verificationId, int? token) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => verifyCode()));
                  },
                  codeAutoRetrievalTimeout: (error) {
                    Utils().toastMessage(error.toString());
                  },
                );
              })
        ]),
      ),
    );
  }
}
