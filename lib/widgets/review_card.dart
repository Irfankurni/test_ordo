import 'package:flutter/material.dart';
import 'package:test_ordo/models/rating_model.dart';
import 'package:test_ordo/theme.dart';

class ReviewCard extends StatelessWidget {
  final RatingModel rating;
  ReviewCard(this.rating);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                rating.imageUrl,
                width: 40,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    rating.name,
                    style: mediumInter,
                  ),
                  Text(
                    '${rating.time} Min',
                    style: mediumInter.copyWith(
                      fontSize: 12,
                      color: Color(0xFFB4BBC6),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.star,
                size: 15,
                color: ratingColor,
              ),
              Text(
                '${rating.rating}',
                style: semiboldPoppins,
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            rating.ratingMessage,
            style: regularInter.copyWith(fontSize: 12),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
