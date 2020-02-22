import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_ui/Screens/Auth/widgets/loginform.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            padding: EdgeInsets.all(40),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 50),
                child: Image(
                  alignment: Alignment.center,
                  image: AssetImage('assets/images/gracelogo.png'),
                  height: 80.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Center(
                  child: Text("Welcome Back! Please login to continue",
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: Colors.black)),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 50),
              child: LoginForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
