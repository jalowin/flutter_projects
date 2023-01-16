import 'package:flutter/material.dart';

import 'package:components_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget')),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            name: "Paisaje 1",
            imageUrl:
                'https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&w=1600',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            name: "Paisaje 2",
            imageUrl:
                'https://images.pexels.com/photos/2325446/pexels-photo-2325446.jpeg?auto=compress&cs=tinysrgb&w=1600',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            name: null,
            imageUrl:
                'https://images.pexels.com/photos/2387418/pexels-photo-2387418.jpeg?auto=compress&cs=tinysrgb&w=1600',
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
