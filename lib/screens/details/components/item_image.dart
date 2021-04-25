import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imgSrc;
  ItemImage({this.imgSrc});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgSrc,
      height: MediaQuery.of(context).size.height * 0.25,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
