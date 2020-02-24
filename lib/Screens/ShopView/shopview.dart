import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_ui/Widgets/Sidemenu.dart';

class ShopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ShopViewScreen()
    );
  }
}
class ShopViewScreen extends StatefulWidget {
  @override
  _ShopViewScreenState createState() => _ShopViewScreenState();
}

class _ShopViewScreenState extends State<ShopViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
        appBar: AppBar(
            title: Text('Velachery-600042',style: GoogleFonts.poppins(fontSize: 15),),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.notifications_none,color: Colors.white,), onPressed: null),
              // IconButton(icon: Icon(Icons.favorite_border,color: Colors.white,), onPressed: null),
              // IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: null),
            ],
            iconTheme: IconThemeData(color: Colors.white),
          ),
        drawer: SideMenu(),
        body: ListView(
          children: <Widget>[
            
          ],
        )
      ),
    );
  }
}