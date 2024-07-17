import 'package:flutter/material.dart';
import 'package:flutter_tutorial_implicit_animation/model/tarot_card.dart';

class LatLongWidget extends StatelessWidget {
  final TarotCard location;

  const LatLongWidget({
    required this.location,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          location.latitude,
          style: const TextStyle(color: Colors.white70),
        ),
        const Icon(Icons.location_on, color: Colors.white70),
        Text(
          location.longitude,
          style: const TextStyle(color: Colors.white70),
        )
      ],
    );
  }
}
