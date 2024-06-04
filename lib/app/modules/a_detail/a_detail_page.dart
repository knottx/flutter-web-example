import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_example/app/global_widgets/normal_body.dart';
import 'package:flutter_web_example/app/modules/a_detail/cubit/a_detail_page_cubit.dart';
import 'package:flutter_web_example/app/modules/a_detail/cubit/a_detail_page_state.dart';

class ADetailPage extends StatelessWidget {
  final String id;

  const ADetailPage({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return ADetailPageCubit(id: id);
      },
      child: const ADetailView(),
    );
  }
}

class ADetailView extends StatefulWidget {
  const ADetailView({super.key});

  @override
  State<ADetailView> createState() => _ADetailViewState();
}

class _ADetailViewState extends State<ADetailView> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ADetailPageCubit, ADetailPageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(state.id),
            centerTitle: true,
          ),
          body: IncrementCountBody(
            count: count,
            increment: () {
              context.read<ADetailPageCubit>().increment();
            },
          ),
        );
      },
    );
  }
}
