import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_ui/Models/products.dart';

List productList = [
  Products(imgUrl: 'assets/images/products-deals/wipro-safewash-1kg-1kg-11562745324.jpg',title: 'wipro-safewash..',price: 280.00),
  Products(imgUrl: 'assets/images/products-deals/pampers-new-baby-24_1509691781.jpeg',title: 'pampers-new..',price: 289.00),
  Products(imgUrl: 'assets/images/products-deals/yoga-bar-blueberry-pie-501560150306.jpg',title: 'yoga-bar-blueberry-pie',price: 47.00),
  Products(imgUrl: 'assets/images/products-deals/tresemme-botanique-detox-and-restore-shampoo-190_1509347433.jpg',title: 'tresemme-bota..',price: 115.00),
  Products(imgUrl: 'assets/images/products-deals/savlon-moisture-shield-handwash-2201535715688.jpg',title: 'savlon-handwash',price: 47.00),
  Products(imgUrl: 'assets/images/products-deals/sakthi-turmeric-powder-5001566804254.jpg',title: 'sakthi-turmeric-powder',price: 91.00),
  Products(imgUrl: 'assets/images/products-deals/sakthi-pepper-chicken-masala9nN-501561701644.jpg',title: 'sakthi-pepper..',price: 28.00),
];

class TodayDeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: productList.length,
      itemBuilder: (context, int i) => Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Center(
                    child: Image.asset(
                      productList[i].imgUrl,
                      width: 105,
                      height: 95,
                    ),
                  )),
              SizedBox(height: 5,),
              Text(productList[i].title,style: GoogleFonts.poppins(fontSize: 12),),
              Text('Rs.' + productList[i].price.toString(),style: GoogleFonts.poppins(fontSize: 12),),
            ],
          ),
          SizedBox(width:10),
        ],
      ),
    );
  }
}
