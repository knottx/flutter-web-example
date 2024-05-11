import 'package:flutter/material.dart';
import 'package:flutter_web_example/app/global_widgets/normal_body.dart';
import 'package:flutter_web_example/app/routes/app_routes.dart';
import 'package:go_router/go_router.dart';

class AView extends StatefulWidget {
  const AView({super.key});

  @override
  State<AView> createState() => _AViewState();
}

class _AViewState extends State<AView> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A'),
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
          context.push(Paths.aIndex);
        },
      ),
    );
  }
}
