import 'package:flutter/material.dart';

import 'package:components_app/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album,
              color: AppTheme.primaryDark,
            ),
            title: Text('Soy un título'),
            subtitle: Text(
                'Est ut reprehenderit veniam adipisicing. Consectetur ad laborum qui id exercitation ex voluptate est labore nisi. Velit tempor eiusmod dolor quis incididunt nisi qui in dolor adipisicing et nostrud elit.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: (Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}
