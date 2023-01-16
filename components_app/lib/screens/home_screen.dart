import 'package:flutter/material.dart';

import 'package:components_app/router/app_routes.dart';
import 'package:components_app/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Componentes de Flutter'),
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(AppRoutes.menuOptions[index].icon,
                      color: AppTheme.primary),
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.menuOptions[index].route);
                  },
                  title: Text(AppRoutes.menuOptions[index].name),
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
