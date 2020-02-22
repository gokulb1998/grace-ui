import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grace_ui/Models/user.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _registerFormKey = GlobalKey<FormState>();
  User _data = new User();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _registerFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Email',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: 'Email *'
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Text cannot be empty.';
                }
                return null;
              }
          ),
          new Padding(padding: new EdgeInsets.all(10)),
          TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  hintText: 'Mobile',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: 'Mobile *'
              ),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value.isEmpty) {
                  return 'MobileNo cannot be empty.';
                }
                return null;
              }
          ),
          new Padding(padding: new EdgeInsets.all(10)),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: 'Password *',
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                labelText: 'Password *'
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Password cannot be empty';
              }
              if (value.length < 8) {
                return 'Password should be 8 characters long in minimum';
              }
              this._data.password = value;
              return null;
            },
          ),
          new Padding(padding: new EdgeInsets.all(10)),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: 'Confirm Password *',
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                labelText: 'Confirm Password *'
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Confirm Password cannot be empty';
              }
              if (!value.contains(_data.password)) {
                return 'Enter the password same as above';
              }
              return null;
            },
          ),
          new Padding(padding: new EdgeInsets.all(5)),
          Row(
            children: <Widget>[
              Expanded(
                flex: 10,
                child: RaisedButton(
                  onPressed: () {
                    if (_registerFormKey.currentState.validate()) {
                      Timer(Duration(seconds: 5), () {
                        // do the action here
                        // Navigator.pushReplacementNamed(context, '/map');
                      });
                      Scaffold.of(context).showSnackBar(
                          SnackBar(
                              content: Text('Thank you for signing up')
                          )
                      );
                    }
                  },
                  child: Text(
                    "Register",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0
                    ),
                  ),
                  padding: new EdgeInsets.fromLTRB(30, 10, 30, 10),
                  textColor: Colors.white,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                      side: BorderSide(color: Color.fromRGBO(67, 66, 92, 1))
                  ),
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
                    Navigator.pushReplacementNamed(context, '/auth');
                  },
                  child: Text("Already an user?", style: TextStyle(color: Colors.black)),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/forgotpass');
                  },
                  child: Text("Forgot password?", style: TextStyle(color: Colors.black)),
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