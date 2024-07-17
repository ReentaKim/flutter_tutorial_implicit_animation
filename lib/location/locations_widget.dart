import 'package:flutter/material.dart';
import 'package:flutter_tutorial_implicit_animation/data/tarot_cards.dart';

import 'location_widget.dart';

class LocationsWidget extends StatefulWidget {
  const LocationsWidget({super.key});

  @override
  State<LocationsWidget> createState() => _LocationsWidgetState();
}

class _LocationsWidgetState extends State<LocationsWidget> {
  final pageController = PageController(viewportFraction: 0.8);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: pageController,
            itemCount: tarotCards.length,
            itemBuilder: (context, index) {
              final location = tarotCards[index];
              return LocationWidget(location: location);
            },
            onPageChanged: (index) => setState(() => pageIndex = index),
          ),
        ),
        Text(
          '${pageIndex + 1}/${tarotCards.length}',
          style: const TextStyle(color: Colors.white70),
        ),
        const SizedBox(height: 12)
      ],
    );
  }
}
