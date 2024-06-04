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
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardPageCubit, DashboardPageState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.selectedIndex,
            children: const [
              APage(),
              BPage(),
            ],
          ),
          bottomNavigationBar: NavigationBar(
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
          ),
        );
      },
    );
  }
}
