import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_example/app/modules/a_index/cubit/a_index_page_cubit.dart';
import 'package:flutter_web_example/app/modules/a_index/cubit/a_index_page_state.dart';
import 'package:go_router/go_router.dart';

class AIndexPage extends StatelessWidget {
  const AIndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return AIndexPageCubit();
      },
      child: const AIndexView(),
    );
  }
}

class AIndexView extends StatefulWidget {
  const AIndexView({super.key});

  @override
  State<AIndexView> createState() => _AIndexViewState();
}

class _AIndexViewState extends State<AIndexView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AIndexPageCubit, AIndexPageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('A Index'),
            centerTitle: true,
          ),
          body: ListView(
            children: List.generate(
              state.count,
              (number) {
                final id = 'A_${number.toString().padLeft(3, '0')}';
                return ListTile(
                  title: Text(id),
                  onTap: () {
                    context.push('/a/$id');
                  },
                );
              },
            ),
          ),
          floatingActionButton: FloatingActionButton(
            heroTag: null,
            onPressed: () {
              context.read<AIndexPageCubit>().increment();
            },
            child: const Icon(
              Icons.add,
            ),
          ),
        );
      },
    );
  }
}
