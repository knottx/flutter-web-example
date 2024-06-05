import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_example/app/modules/a/a_page.dart';
import 'package:flutter_web_example/app/modules/b/b_page.dart';
import 'package:flutter_web_example/app/modules/dashboard/cubit/dashboard_page_cubit.dart';
import 'package:flutter_web_example/app/modules/dashboard/cubit/dashboard_page_state.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return DashboardPageCubit();
      },
      child: const DashboardView(),
    );
  }
}

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  bool isWideScreen = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final double width = MediaQuery.of(context).size.width;
    isWideScreen = width > 600;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardPageCubit, DashboardPageState>(
      builder: (context, state) {
        return Scaffold(
          body: Row(
            children: [
              Visibility(
                visible: isWideScreen,
                child: _leftNavigationRail(state),
              ),
              Expanded(
                child: IndexedStack(
                  index: state.selectedIndex,
                  children: const [
                    APage(),
                    BPage(),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar:
              isWideScreen ? null : _bottomNavigationBar(state),
        );
      },
    );
  }

  Widget _leftNavigationRail(DashboardPageState state) {
    return NavigationRail(
      selectedIndex: state.selectedIndex,
      onDestinationSelected: (newIndex) {
        context.read<DashboardPageCubit>().setSelectedIndex(newIndex);
      },
      labelType: NavigationRailLabelType.all,
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      leading: const Icon(
        Icons.flutter_dash,
        size: 32,
      ),
      groupAlignment: -0.85,
      destinations: const [
        NavigationRailDestination(
          icon: Icon(Icons.circle),
          label: Text('A'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.square),
          label: Text('B'),
        ),
      ],
    );
  }

  Widget _bottomNavigationBar(DashboardPageState state) {
    return NavigationBar(
      selectedIndex: state.selectedIndex,
      onDestinationSelected: (newIndex) {
        context.read<DashboardPageCubit>().setSelectedIndex(newIndex);
      },
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.circle),
          label: 'A',
        ),
        NavigationDestination(
          icon: Icon(Icons.square),
          label: 'B',
        ),
      ],
    );
  }
}
