import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_ui/Screens/ShopView/allbrands.dart';
import 'package:grace_ui/Screens/ShopView/allcategories.dart';
import 'package:grace_ui/Screens/ShopView/bsp.dart';
import 'package:grace_ui/Screens/ShopView/newproducts.dart';
import 'package:grace_ui/Screens/ShopView/todaydeals.dart';
import 'package:grace_ui/Screens/ShopView/topoffers.dart';
import 'package:grace_ui/Widgets/Sidemenu.dart';

class ShopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: ShopViewScreen());
  }
}

final List<String> imgList = [
  'https://www.graceonline.in/uploads/Home-page-banner/2020/02/18/grace-banner01582005496.jpg',
  'https://www.graceonline.in/uploads/Home-page-banner/2020/01/07/grace-banner21578374487.jpg',
  'https://www.graceonline.in/uploads/Home-page-banner/2020/01/14/grace-banner31578990275.jpg',
  'https://www.graceonline.in/uploads/Home-page-banner/2020/01/18/grace-banner11579324691.jpg',
];

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

class ShopViewScreen extends StatefulWidget {
  @override
  _ShopViewScreenState createState() => _ShopViewScreenState();
}

class _ShopViewScreenState extends State<ShopViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Icon(Icons.location_on),
              Text(
                'Velachery-600042',
                style: GoogleFonts.poppins(fontSize: 15),
              ),
            ],
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
        body: Container(
          decoration: BoxDecoration(color: Colors.grey[200]),
          child: ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              CarouselSlider(
                viewportFraction: 1.0,
                aspectRatio: 3.0,
                autoPlay: true,
                enlargeCenterPage: false,
                items: map<Widget>(
                  imgList,
                  (index, i) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(i), fit: BoxFit.contain),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 5, bottom: 0, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'All Categories',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    FlatButton(
                        onPressed: null,
                        child: Row(
                          children: <Widget>[
                            Text(
                              'View All',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Colors.green),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 10, left: 10, right: 5),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.transparent),
                    width: MediaQuery.of(context).size.width,
                    height: 110,
                    child: AllCategories(),
                  )),
              Padding(
                padding:
                    EdgeInsets.only(top: 5, bottom: 0, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Top Offers',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    FlatButton(
                        onPressed: null,
                        child: Row(
                          children: <Widget>[
                            Text(
                              'View All',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Colors.green),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 5),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.transparent),
                    width: MediaQuery.of(context).size.width,
                    height: 110,
                    child: TopOffers(),
                  )),
              Padding(
                padding:
                    EdgeInsets.only(top: 5, bottom: 0, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Today Deals',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    FlatButton(
                        onPressed: null,
                        child: Row(
                          children: <Widget>[
                            Text(
                              'View All',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Colors.green),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 5),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.transparent),
                    width: MediaQuery.of(context).size.width,
                    height: 170,
                    child: TodayDeals(),
                  )),
              Padding(
                padding:
                    EdgeInsets.only(top: 0, bottom: 0, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Best Selling Products',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    FlatButton(
                        onPressed: null,
                        child: Row(
                          children: <Widget>[
                            Text(
                              'View All',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Colors.green),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 0, left: 10, right: 5),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.transparent),
                    width: MediaQuery.of(context).size.width,
                    height: 195,
                    child: Bsp(),
                  )),
              Padding(
                padding:
                    EdgeInsets.only(top: 0, bottom: 0, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Newly Added Products',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    FlatButton(
                        onPressed: null,
                        child: Row(
                          children: <Widget>[
                            Text(
                              'View All',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Colors.green),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 0, left: 10, right: 5),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.transparent),
                    width: MediaQuery.of(context).size.width,
                    height: 195,
                    child: NewProducts(),
                  )),
              Padding(
                padding:
                    EdgeInsets.only(top: 0, bottom: 0, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'All Brands',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    FlatButton(
                        onPressed: null,
                        child: Row(
                          children: <Widget>[
                            Text(
                              'View All',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Colors.green),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 10, left: 10, right: 5),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.transparent),
                    width: MediaQuery.of(context).size.width,
                    height: 110,
                    child: AllBrands(),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
