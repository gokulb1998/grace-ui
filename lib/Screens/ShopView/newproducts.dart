import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_ui/Models/products.dart';

List newproductList = [
  Products(
      imgUrl: 'assets/images/Products-new/snickers-cashewayD-221581411825.jpg',
      title: 'snickers-casheway..',
      price: 23.00),
  Products(
      imgUrl: 'assets/images/Products-new/snickers-cashew-451581411438.jpg',
      title: 'snickers-cashew..',
      price: 47.00),
  Products(
      imgUrl:
          'assets/images/Products-new/you-ess-skin-whitening-night-cream-501581405732.jpg',
      title: 'night-cream..',
      price: 449.00),
  Products(
      imgUrl:
          'assets/images/Products-new/galaxy-smooth-milkSxZ-301581405219.jpg',
      title: 'galaxy-smooth-milk..',
      price: 38.00),
  Products(
      imgUrl:
          'assets/images/Products-new/you-ess-skin-whitening-face-wash-2001581405057.jpg',
      title: 'whitening-face-wash..',
      price: 269.00),
  Products(
      imgUrl:
          'assets/images/Products-new/you-ess-skin-whitening-day-cream-501581409453.jpg',
      title: 'whitening-day-cream..',
      price: 449.00),
];

class NewProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: newproductList.length,
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
                            newproductList[i].imgUrl,
                            width: 105,
                            height: 95,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.green,
                        ),
                      ])),
              SizedBox(
                height: 5,
              ),
              Text(
                newproductList[i].title,
                style: GoogleFonts.poppins(fontSize: 12),
              ),
              Text(
                'Rs.' + newproductList[i].price.toString(),
                style: GoogleFonts.poppins(fontSize: 12),
              ),
              // Text(offerList[i].title),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
