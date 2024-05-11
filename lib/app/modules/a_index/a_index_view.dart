import 'package:flutter/material.dart';
import 'package:flutter_web_example/app/global_widgets/normal_body.dart';
import 'package:flutter_web_example/app/routes/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

class AIndexView extends StatefulWidget {
  const AIndexView({super.key});

  @override
  State<AIndexView> createState() => _AIndexViewState();
}

class _AIndexViewState extends State<AIndexView> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A Index'),
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
            Paths.aIndexDetail(
              id: const Uuid().v4(),
            ),
          );
        },
      ),
    );
  }
}
