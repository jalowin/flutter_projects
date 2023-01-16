import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 20);

    int counter = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('HomeScreen'),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Número de Clicks/Tabs',
              style: fontSize,
            ),
            Text(
              '$counter',
              style: fontSize,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print('Hola que tal: $counter');
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40.0,
          semanticLabel: 'Plus Click',
        ),
      ),
    );
  }
}
