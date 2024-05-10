import 'package:flutter/material.dart';
import 'package:flutter_day_13/pages/task_3/widgets/movie_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/movie.dart';

class MovieList extends StatelessWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.only(left: 22.w, right: 22.w, bottom: 85.h),
        shrinkWrap: true,
        itemCount: movies.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
        ),
        itemBuilder: (context, index) {
          return MovieItem(movie: movies[index]);
        },
      ),
    );
  }
}
