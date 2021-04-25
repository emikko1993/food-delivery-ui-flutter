import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/category_list.dart';
import 'package:food_delivery_app/components/discount_card.dart';
import 'package:food_delivery_app/components/item_list.dart';
import 'package:food_delivery_app/components/search_box.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(
          onChanged: (value) {},
        ),
        CategoryList(),
        ItemList(),
        DiscountCard()
      ],
    );
  }
}

