import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:teste/screens/dashboard_screen.dart';
import 'package:teste/screens/estoque.dart';
import 'package:teste/screens/settings.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: const NavigationAppBar(
        leading: Center(
          child: FlutterLogo(
            size: 25,
          ),
        ),
      ),
      pane: NavigationPane(
          header: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: DefaultTextStyle(
              style: FluentTheme.of(context).typography.title!,
              child: const Text("Bem vinda Patricia!"),
            ),
          ),
          items: [
            PaneItem(
              icon: const Icon(FluentIcons.grid_view_medium),
              title: const Text('Dashboard'),
              body: const DashboardScreen(),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.car),
              title: const Text('Produtos'),
              body: const Text('Produtoss'),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.database),
              title: const Text('Estoque'),
              body: const Estoque(),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.settings),
              title: const Text('Configurações'),
              body: const SettingsScreen(),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.service_activity),
              title: const Text('Relatório de vendas'),
              body: const Text('configurations uuiui'),

            ),
          ],
          selected: _currentIndex,
          displayMode: PaneDisplayMode.auto,
          onChanged: (i) {
            setState(
              () {
                _currentIndex = i;
              },
            );
          }),
    );
  }
}
