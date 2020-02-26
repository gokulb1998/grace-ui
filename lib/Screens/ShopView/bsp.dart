import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_ui/Models/products.dart';

List bspproductList = [
  Products(
      imgUrl:
          'assets/images/products/3-roses-natural-care-tea-1001561352209.jpg',
      title: '3-roses-natural..',
      price: 66.00),
  Products(
      imgUrl:
          'assets/images/products/britannia-marie-gold-5-200gm-set-2001554202258.jpg',
      title: 'marie-gold..',
      price: 80.00),
  Products(
      imgUrl: 'assets/images/products/brown-corn-flour-1001580210477.jpg',
      title: 'brown-corn-flour..',
      price: 23.00),
  Products(
      imgUrl:
          'assets/images/products/chakra-gold-special-edition-2501575116595.jpg',
      title: 'chakra-gold..',
      price: 99.00),
  Products(
      imgUrl:
          'assets/images/products/kissan-fresh-tomato-ketchup-2001533975708.jpeg',
      title: 'kissan-fresh..',
      price: 57.00),
  Products(
      imgUrl: 'assets/images/products/tropicana-apple-100--11559815295.jpg',
      title: 'tropicana-apple..',
      price: 121.00),
];

class Bsp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: bspproductList.length,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                    Center(
                      child: Image.asset(
                        bspproductList[i].imgUrl,
                        width: 105,
                        height: 95,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Icon(Icons.favorite,color: Colors.green,),
                  ])),
              SizedBox(
                height: 5,
              ),
              Text(
                bspproductList[i].title,
                style: GoogleFonts.poppins(fontSize: 12),
              ),
              Text(
                'Rs.' + bspproductList[i].price.toString(),
                style: GoogleFonts.poppins(fontSize: 12),
              ),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
