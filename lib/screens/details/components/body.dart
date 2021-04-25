import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/screens/details/components/item_image.dart';
import 'package:food_delivery_app/screens/details/components/order_button.dart';
import 'package:food_delivery_app/screens/details/components/title_price_rating.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemImage(
          imgSrc: 'assets/images/burger.png',
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          shopName("McDonald's"),
          TitlePriceRating(
            price: '\$15',
            numOfReviews: 16,
            name: 'Cheese Burger',
            rating: 4,
            onRatingChanged: (value) {},
          ),
          Text(
            'A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty. The cheese is usually added to the cooking hamburger patty shortly before serving, which allows the cheese to melt.',
            style: TextStyle(height: 1.5),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          OrderButton(),
        ],
      ),
    );
  }

  Row shopName(String name) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: kSecondaryColor,
        ),
        SizedBox(
          width: 10,
        ),
        Text(name),
      ],
    );
  }
}

