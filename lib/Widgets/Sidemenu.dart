import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("User968", style: TextStyle(color: Colors.white, fontSize: 12 ,fontWeight: FontWeight.w400)),
              accountEmail: Text("user968@gmail.com", style: TextStyle(color: Colors.white ,fontSize: 12, fontWeight: FontWeight.w400)),
              decoration: BoxDecoration(color: Colors.green),
              currentAccountPicture: CircleAvatar(
                radius: 15.0,
                backgroundImage: NetworkImage('https://cdn3.iconfinder.com/data/icons/vector-icons-6/96/256-512.png'),
                backgroundColor: Colors.transparent,
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Bakery & Diary",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                // Navigator.pushNamed(context, '/display');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Beverages",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                // Navigator.pushNamed(context, '/display');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Foodgrains Oil & Masalas",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                // Navigator.pushNamed(context, '/display');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Health & Beauty",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                // Navigator.pushNamed(context, '/display');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Branded Food & Snacks",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                // Navigator.pushNamed(context, '/display');
              },
            ),
             ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Cleaning & Households",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                // Navigator.pushNamed(context, '/display');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Offers",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                // Navigator.pushNamed(context, '/display');
              },
            ),
             Divider(),
             ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Track Order",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                // Navigator.pushNamed(context, '/display');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("My Orders",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                // Navigator.pushNamed(context, '/display');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("My Cart",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                // Navigator.pushNamed(context, '/map');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("My Wishlist",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                // Navigator.pushNamed(context, '/map');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("My Account",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                // Navigator.pushNamed(context, '/map');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Our Branches",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                // Navigator.pushNamed(context, '/map');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Contact Us",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                // Navigator.pushNamed(context, '/map');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Feedback",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                // Navigator.pushNamed(context, '/map');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("App Information & terms",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                // Navigator.pushNamed(context, '/map');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.power_settings_new),
              title: Text("Log out",style: GoogleFonts.poppins(fontSize: 15),),
              onTap: () {
                Navigator.pushNamed(context, '/auth');
              },
            ),
          ],
        ),
      ),
    );

  }
}