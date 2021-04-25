import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/app_bar.dart';
import 'package:food_delivery_app/components/body.dart';
import 'package:food_delivery_app/components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

