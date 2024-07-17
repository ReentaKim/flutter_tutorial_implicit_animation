import 'package:flutter/material.dart';
import 'package:flutter_tutorial_implicit_animation/location/locations_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: buildAppBar(),
      body: const LocationsWidget(),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const Text('TAROT CARD'),
      centerTitle: true,
    );
  }

  Widget buildBottomNavigation() {
    return BottomNavigationBar(
      elevation: 0,
      unselectedItemColor: Colors.white54,
      selectedItemColor: Colors.white,
      backgroundColor: Colors.transparent,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.credit_card),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: '',
        ),
      ],
    );
  }
}
