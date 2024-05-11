import 'package:flutter/material.dart';
import 'package:flutter_web_example/app/global_widgets/normal_body.dart';
import 'package:flutter_web_example/app/routes/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

class ADetailView extends StatefulWidget {
  final String? id;

  const ADetailView({
    super.key,
    required this.id,
  });

  @override
  State<ADetailView> createState() => _ADetailViewState();
}

class _ADetailViewState extends State<ADetailView> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.id ?? ''),
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
