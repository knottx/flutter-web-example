import 'package:flutter/material.dart';
import 'package:flutter_web_example/app/modules/a/a_view.dart';
import 'package:flutter_web_example/app/modules/b/b_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: const [
          AView(),
          BView(),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() {
    return NavigationBar(
      selectedIndex: index,
      onDestinationSelected: (newIndex) {
        setState(() {
          index = newIndex;
        });
      },
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.circle),
          label: 'A',
        ),
        NavigationDestination(
          icon: Icon(Icons.circle),
          label: 'B',
        ),
      ],
    );
  }
}
