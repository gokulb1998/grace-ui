import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_ui/Widgets/Sidemenu.dart';

class CategoriesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: GoogleFonts.poppins(fontSize: 15),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
              onPressed: null),
          // IconButton(icon: Icon(Icons.favorite_border,color: Colors.white,), onPressed: null),
          // IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: null),
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Text('Categories Page will be updated'),
      ),
    ));
  }
}
