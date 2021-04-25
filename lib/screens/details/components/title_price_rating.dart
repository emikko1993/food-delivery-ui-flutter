import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class TitlePriceRating extends StatelessWidget {
  final String price;
  final int numOfReviews;
  final double rating;
  final String name;
  final RatingChangeCallback onRatingChanged;
  const TitlePriceRating({
    @required this.price,
    Key key,
    this.numOfReviews,
    this.rating,
    this.name,
    this.onRatingChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SmoothStarRating(
                      borderColor: kPrimaryColor,
                      rating: rating,
                      onRated: onRatingChanged,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('$numOfReviews reviews'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: kPrimaryColor,
            ),
            padding: EdgeInsets.symmetric(vertical: 15),
            alignment: Alignment.center,
            height: 65,
            width: 65,
            child: Text(
              price.toString(),
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
