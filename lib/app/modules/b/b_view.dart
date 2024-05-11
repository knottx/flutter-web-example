import 'package:flutter/material.dart';
import 'package:flutter_web_example/app/global_widgets/normal_body.dart';
import 'package:flutter_web_example/app/routes/app_routes.dart';
import 'package:go_router/go_router.dart';

class BView extends StatefulWidget {
  const BView({super.key});

  @override
  State<BView> createState() => _BViewState();
}

class _BViewState extends State<BView> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('B'),
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
          context.push(Paths.bIndex);
        },
      ),
    );
  }
}
