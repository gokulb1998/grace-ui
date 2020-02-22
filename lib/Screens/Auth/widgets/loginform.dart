import 'package:flutter/material.dart';
// import 'dart:async';

import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _loginFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Email / Mobile',
                  fillColor: Colors.green,
                  border: OutlineInputBorder(),
                  labelText: 'Email / Mobile *'),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Text cannot be empty.';
                }
                return null;
              }),
          new Padding(padding: new EdgeInsets.all(10)),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: 'Password *',
                fillColor: Colors.green,
                border: OutlineInputBorder(),
                labelText: 'Password *'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Password cannot be empty';
              }
              if (value.length < 8) {
                return 'Password should be 8 characters long in minimum';
              }
              return null;
            },
          ),
          new Padding(padding: new EdgeInsets.all(10)),
          Row(
            children: <Widget>[
              Expanded(
                flex: 10,
                child: RaisedButton(
                  onPressed: () {
                    // if (_loginFormKey.currentState.validate()) {
                    //   Timer(Duration(seconds: 5), () {
                    //     // do the action here
                    //     Navigator.pushReplacementNamed(context, "/map");
                    //   });
                    //   Scaffold.of(context).showSnackBar(
                    //       SnackBar(
                    //           content: Text('Welcome to HomePage')
                    //       )
                    //   );
                    // }
                  },
                  child: Text("Log In",
                      textDirection: TextDirection.ltr,
                      style: GoogleFonts.poppins(fontSize: 20)),
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  textColor: Colors.white,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                      side: BorderSide(color: Color.fromRGBO(67, 66, 92, 1))),
                ),
              ),
            ],
          ),
          new Padding(padding: new EdgeInsets.all(10)),
          Padding(
            padding: EdgeInsets.only(top: 0, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/register');
                  },
                  child:
                      Text("New User?", style: TextStyle(color: Colors.black)),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/forgotpass');
                  },
                  child: Text("Forgot password?",
                      style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
          new Padding(padding: new EdgeInsets.all(10)),
        ],
      ),
    );
  }
}
