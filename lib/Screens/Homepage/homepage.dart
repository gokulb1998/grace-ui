import 'package:flutter/material.dart';

import 'package:grace_ui/Screens/CategoriesView/categoriesview.dart';
import 'package:grace_ui/Screens/MyAccount/myaccount.dart';
import 'package:grace_ui/Screens/MyCart/mycart.dart';
import 'package:grace_ui/Screens/MyWishlist/mywishlist.dart';
import 'package:grace_ui/Screens/ShopView/shopview.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomePageScreen(),
    );
  }
}

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int currentTabIndex = 0;
  List<Widget> tabs = [
    ShopView(),
    CategoriesView(),
    MyCart(),
    MyWishlist(),
    MyAccount()
  ];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
      // print(index);
    });
  }

  Future<bool> _exitApp(BuildContext context) {
    return showDialog(
            context: context,
            builder: (context) {
              return new AlertDialog(
                title: new Text('Are you sure want to logout?'),
                //titlePadding: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 5),
                content: new Text('We hate to see you leave...'),
                //contentPadding: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 5),
                actions: <Widget>[
                  new FlatButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: new Text('Cancel'),
                  ),
                  new FlatButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: new Text('LogOut'),
                  ),
                ],
              );
            }) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () => _exitApp(context),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          body: tabs[currentTabIndex],
          // body: Center(
          //   child: Text('Page will be updated'),
          // ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: onTapped,
            currentIndex: currentTabIndex,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                title: Text("Categories"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text("My Cart"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                title: Text("My Wishlist"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("My Account"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
