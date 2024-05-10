import 'package:flutter/material.dart';
import 'widgets/stars.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rating'),
      ),
      body: const Stars(),
    );
  }
}
