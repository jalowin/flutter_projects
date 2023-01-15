import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'SuperMario Bros',
    'Legend of Zelda',
    'SuperMetroid'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo,
        title: const Text("ListView Tipo 2"),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: ((context, index) => ListTile(
              title: Text(options[index]),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                final game = options[index];
                print(game);
              },
            )),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
