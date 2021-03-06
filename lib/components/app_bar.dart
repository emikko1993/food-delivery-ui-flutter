import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/constants.dart';

AppBar homeAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
      title: RichText(
        text: TextSpan(
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: 'Food',
                style: TextStyle(color: kSecondaryColor),
              ),
              TextSpan(
                text: 'Delivery',
                style: TextStyle(color: kPrimaryColor),
              ),
            ]),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/icons/notification.svg'),
          onPressed: () {},
        )
      ],
    );
  }

