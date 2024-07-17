
import 'package:flutter_tutorial_implicit_animation/data/reviews.dart';
import 'package:flutter_tutorial_implicit_animation/model/tarot_card.dart';

List<TarotCard> tarotCards = [
  TarotCard(
    name: 'THE EMPRESS',
    urlImage: 'assets/images/tarot_3.jpg',
    addressLine1: 'La Cresenta-Montrose, CA91020 Glendale',
    addressLine2: 'NO. 791187',
    starRating: 4,
    latitude: 'NORTH LAT 24',
    longitude: 'EAST LNG 17',
    reviews: Reviews.allReviews,
  ),
  TarotCard(
    name: 'THE FOOL',
    urlImage: 'assets/images/tarot_0.jpg',
    addressLine1: 'La Cresenta-Montrose, CA91020 Glendale',
    addressLine2: 'NO. 11641',
    starRating: 4,
    latitude: 'SOUTH LAT 14',
    longitude: 'EAST LNG 27',
    reviews: Reviews.allReviews,
  ),
  TarotCard(
    name: 'CUP 2',
    urlImage: 'assets/images/cup_2.jpg',
    addressLine1: 'La Cresenta-Montrose, CA91020 Glendale',
    addressLine2: 'NO. 791187',
    starRating: 4,
    latitude: 'NORTH LAT 24',
    longitude: 'WEST LNG 08',
    reviews: Reviews.allReviews,
  ),
  TarotCard(
    name: 'KING OF CUPS',
    urlImage: 'assets/images/cup_king.jpg',
    addressLine1: 'La Cresenta-Montrose, CA91020 Glendale',
    addressLine2: 'NO. 791187',
    starRating: 4,
    latitude: 'SOUTH LAT 39',
    longitude: 'WEST LNG 41',
    reviews: Reviews.allReviews,
  ),
];
