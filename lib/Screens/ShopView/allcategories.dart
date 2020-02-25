import 'package:flutter/material.dart';
import 'package:grace_ui/Models/Categories.dart';

List categoriesList = [
  Categories(imageUrl: 'assets/icons/breakfast.png', title: 'Bakery'),
  Categories(imageUrl: 'assets/icons/bottle.png', title: 'Beverages'),
  Categories(imageUrl: 'assets/icons/002-sack.png', title: 'FoodGrains'),
  Categories(imageUrl: 'assets/icons/004-natural-product.png', title: 'Health & Beauty'),
  Categories(imageUrl: 'assets/icons/003-chocolate.png', title: 'Food & Snacks'),
  Categories(imageUrl: 'assets/icons/001-home-equity.png', title: 'Households'),
];

class AllCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: categoriesList.length,
      itemBuilder: (context, int i) => Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Center(
                    child: Image.asset(
                      categoriesList[i].imageUrl,
                      width: 60,
                      height: 60,
                      // fit: BoxFit.fill,
                    ),
                  )),
              Text(categoriesList[i].title),
            ],
          ),
          SizedBox(width:10),
        ],
      ),
    );
  }
}
