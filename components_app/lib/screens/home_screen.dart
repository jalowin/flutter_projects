import 'package:components_app/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Center(
            child: Text('Componentes de Flutter'),
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.access_alarm_sharp),
                  onTap: () {
                    Navigator.pushNamed(context, 'listview3');
                  },
                  title: const Text('Nombre de ruta'),
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10));
  }
}
