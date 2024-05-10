import 'package:flutter/material.dart';

import '../task_1/task_1.dart';
import '../task_2/task_2.dart';
import '../task_3/task_3.dart';
import '/pages/entrance/widgets/navigate_button.dart';
import '/utils/extensions.dart';

class Entrance extends StatelessWidget {
  const Entrance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const NavigateButton(title: '1. Rating App', navigateTo: Task1()),
          20.height,
          const NavigateButton(title: '2. Product Info App', navigateTo: Task2()),
          20.height,
          const NavigateButton(title: '3. Movie App', navigateTo: Task3()),
        ],
      ),
    );
  }
}
