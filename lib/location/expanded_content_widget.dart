import 'package:flutter/material.dart';
import 'package:flutter_tutorial_implicit_animation/location/stars_widget.dart';
import 'package:flutter_tutorial_implicit_animation/model/tarot_card.dart';

class ExpandedContentWidget extends StatelessWidget {
  final TarotCard location;

  const ExpandedContentWidget({
    required this.location,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(location.addressLine1),
            const SizedBox(height: 8),
            buildAddressRating(location: location),
            const SizedBox(height: 12),
            buildReview(location: location)
          ],
        ),
      );

  Widget buildAddressRating({
    required TarotCard location,
  }) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            location.addressLine2,
            style: const TextStyle(color: Colors.black45),
          ),
          StarsWidget(stars: location.starRating),
        ],
      );

  Widget buildReview({
    required TarotCard location,
  }) =>
      Row(
        children: location.reviews
            .map((review) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.black12,
                    backgroundImage: AssetImage(review.urlImage),
                  ),
                ))
            .toList(),
      );
}
