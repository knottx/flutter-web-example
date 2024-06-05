import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_example/app/global_widgets/normal_body.dart';
import 'package:flutter_web_example/app/modules/b/cubit/b_page_cubit.dart';
import 'package:flutter_web_example/app/modules/b/cubit/b_page_state.dart';

class BPage extends StatelessWidget {
  const BPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BPageCubit(),
      child: const BView(),
    );
  }
}

class BView extends StatefulWidget {
  const BView({super.key});

  @override
  State<BView> createState() => _BViewState();
}

class _BViewState extends State<BView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BPageCubit, BPageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('B'),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IncrementCountBody(
                count: state.count,
                increment: () {
                  context.read<BPageCubit>().increment();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
