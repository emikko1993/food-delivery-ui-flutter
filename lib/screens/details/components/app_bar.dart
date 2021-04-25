import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      elevation: 0,
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/icons/share.svg'),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset('assets/icons/more.svg'),
          onPressed: () {},
        ),
      ],
    );
  }

