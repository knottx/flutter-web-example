import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NormalBody extends StatelessWidget {
  final RxInt count;
  final VoidCallback increment;
  final VoidCallback onTapNext;

  const NormalBody({
    super.key,
    required this.count,
    required this.increment,
    required this.onTapNext,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(() {
            return Text(
              count.value.toString(),
              style: const TextStyle(fontSize: 20),
            );
          }),
          const SizedBox(height: 16),
          IconButton.filledTonal(
            onPressed: increment,
            icon: const Icon(Icons.add),
          ),
          const SizedBox(height: 32),
          FilledButton(
            onPressed: onTapNext,
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}
