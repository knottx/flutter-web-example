import 'package:flutter/material.dart';

class IncrementCountBody extends StatelessWidget {
  final int count;
  final VoidCallback increment;

  const IncrementCountBody({
    super.key,
    required this.count,
    required this.increment,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            count.toString(),
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 16),
          IconButton.filledTonal(
            onPressed: increment,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
