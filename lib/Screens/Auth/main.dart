import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(40),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 100, bottom: 150),
              child: Image(
                alignment: Alignment.center,
                image: AssetImage('assets/images/gracelogo.png'),
                height: 80.0,
              ),
            ),
            Material(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.green,
                  labelText: 'Enter PinCode*',
                  // labelStyle: TextStyle(color: Colors.white)
                ),
                keyboardType: TextInputType.number,
                maxLength: 6,
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/auth');
              },
              color: Colors.green,
              textColor: Colors.white,
              padding: EdgeInsets.only(top: 10, bottom: 10,left: 25,right: 25),
              child: Text('Submit',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                  )),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                  side: BorderSide(color: Color.fromRGBO(67, 66, 92, 1))),
            ),
          ],
        ),
      ),
    );
  }
}
