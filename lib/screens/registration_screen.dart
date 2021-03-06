import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  //TODO static string id
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  //TODO connect to firebase
//  final _auth = FirebaseAuth.instance;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Screen'),
      ),
      body: Container(
        //TODO decoracion del contenedor
//        decoration: k_boxDecorationGradient
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              style: TextStyle(
                fontSize: 20,
              ),
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
//              decoration:
//                  kInputDecoration.copyWith(hintText: 'Enter your email'),
            ),
            //TODO sized box height 24
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
//              decoration:
//                  kInputDecoration.copyWith(hintText: 'Enter your password'),
            ),
            //TODO sized box height 24
            MaterialButton(
              child: Text('Register'),
              minWidth: 200.0,
              height: 40.0,
              color: Colors.red,
            ),
          ],
        ),
      ),
      //body: ,
    );
  }
}
