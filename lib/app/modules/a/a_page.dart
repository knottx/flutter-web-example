import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_example/app/global_widgets/normal_body.dart';
import 'package:flutter_web_example/app/modules/a/cubit/a_page_cubit.dart';
import 'package:flutter_web_example/app/modules/a/cubit/a_page_state.dart';
import 'package:go_router/go_router.dart';

class APage extends StatelessWidget {
  const APage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => APageCubit(),
      child: const AView(),
    );
  }
}

class AView extends StatefulWidget {
  const AView({super.key});

  @override
  State<AView> createState() => _AViewState();
}

class _AViewState extends State<AView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<APageCubit, APageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('A'),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IncrementCountBody(
                count: state.count,
                increment: () {
                  context.read<APageCubit>().increment();
                },
              ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () {
                  context.push('/a');
                },
                child: const Text('Next'),
              ),
            ],
          ),
        );
      },
    );
  }
}
