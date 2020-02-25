import 'package:flutter/material.dart';
import 'package:grace_ui/Models/Offers.dart';

List brandList = [
  Offers(imgUrl: 'assets/images/brands/Aachi.png'),
  Offers(imgUrl: 'assets/images/brands/britannia.jpg'),
  Offers(imgUrl: 'assets/images/brands/bru.png'),
  Offers(imgUrl: 'assets/images/brands/Dabur.png'),
  Offers(imgUrl: 'assets/images/brands/grace.jpg'),
  Offers(imgUrl: 'assets/images/brands/maggi.jpg'),
  Offers(imgUrl: 'assets/images/brands/SakthiMasala.jpg'),
  Offers(imgUrl: 'assets/images/brands/surf-excel.png'),
];

class AllBrands extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: brandList.length,
      itemBuilder: (context, int i) => Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white),
                  child: Center(
                    child: Image.asset(
                      brandList[i].imgUrl,
                      width: 60,
                      height: 60,
                    ),
                  )),
              // Text(offerList[i].title),
            ],
          ),
          SizedBox(width:10),
        ],
      ),
    );
  }
}
