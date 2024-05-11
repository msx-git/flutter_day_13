import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/movie.dart';
import 'movie_item.dart';

class Tab2 extends StatelessWidget {
  const Tab2({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
        childAspectRatio: 2 / 3,
      ),
      children: [
        MovieItem(movie: movies[Random().nextInt(15)]),
        MovieItem(movie: movies[Random().nextInt(15)]),
        MovieItem(movie: movies[Random().nextInt(15)]),
        MovieItem(movie: movies[Random().nextInt(15)]),
      ],
    );
  }
}
