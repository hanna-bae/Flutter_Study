import 'package:flutter/material.dart';
import 'form_input.dart';

class LoginPage extends StatelessWidget {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  //private variable
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('EcoReward'),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(315 * 0.05),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Form(
                          key: _formkey,
                          child: Column(children: <Widget>[
                            FormInput('Email'),
                            FormInput('Password'),
                            ElevatedButton(
                                child: Text("Login"), onPressed: () {}),
                            Text("Forgot Password?"),
                          ])),
                    ),
                  ),
                ],
              ),
              Text("Don't have an account? Sign Up"),
              Container(
                height: 48 * 0.05,
              )
            ],
          ),
        ],
      ),
    );
  }
}
