
import 'package:flutter/material.dart';

class Stars extends StatefulWidget {
  const Stars({super.key});

  @override
  State<Stars> createState() => _RatingState();
}

class _RatingState extends State<Stars> {
  List<bool> rated = [
    false,
    false,
    false,
    false,
    false,
  ];
  int starCount = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text([
          '',
          'Meh',
          'Below average',
          'Just okay',
          'Worth a try',
          'Excellent!'
        ][starCount]),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 5; i++)
              IconButton(
                onPressed: () {
                  setState(() {
                    for (int j = 0; j <= i; j++) {
                      starCount = (j + 1);
                      rated[j] = true;
                    }
                    for (int j = 4; j > i; j--) {
                      rated[j] = false;
                    }
                  });
                },
                icon: Icon(
                  rated[i] ? Icons.star : Icons.star_border,
                  color: rated[i] ? Colors.amber : Colors.grey,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
