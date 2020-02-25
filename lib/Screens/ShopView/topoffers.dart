import 'package:flutter/material.dart';
import 'package:grace_ui/Models/Offers.dart';

List offerList = [
  Offers(imgUrl: 'assets/images/offers/promoban1572075263.jpg'),
  Offers(imgUrl: 'assets/images/offers/promoban1574318005.jpg'),
  Offers(imgUrl: 'assets/images/offers/promoban1572598632.jpg'),
  Offers(imgUrl: 'assets/images/offers/promoban1574225143.jpg'),
  Offers(imgUrl: 'assets/images/offers/Home-right-banner-101575019528.png'),
  Offers(imgUrl: 'assets/images/offers/Home-right-banner-211573548430.jpg'),
];

class TopOffers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: offerList.length,
      itemBuilder: (context, int i) => Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: 150,
                height: 110,
                // padding: EdgeInsets.all(15),
                decoration: BoxDecoration(color: Colors.white),
                child: Image.asset(
                  offerList[i].imgUrl,
                  // width: 60,
                  // height: 60,
                  fit: BoxFit.fill,
                ),
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
