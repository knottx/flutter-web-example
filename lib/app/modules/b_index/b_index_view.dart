import 'package:flutter/material.dart';
import 'package:flutter_web_example/app/global_widgets/normal_body.dart';
import 'package:flutter_web_example/app/routes/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

class BIndexView extends StatefulWidget {
  const BIndexView({super.key});

  @override
  State<BIndexView> createState() => _BIndexViewState();
}

class _BIndexViewState extends State<BIndexView> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('B Index'),
        centerTitle: true,
      ),
      body: NormalBody(
        count: count,
        increment: () {
          setState(() {
            count++;
          });
        },
        onTapNext: () {
          context.push(
            Paths.bIndexDetail(
              id: const Uuid().v4(),
            ),
          );
        },
      ),
    );
  }
}
