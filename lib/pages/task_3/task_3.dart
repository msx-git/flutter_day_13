import 'package:flutter/material.dart';
import 'package:flutter_day_13/pages/task_3/widgets/custom_bottom_bar.dart';
import 'package:flutter_day_13/pages/task_3/widgets/movie_list.dart';
import 'package:flutter_day_13/pages/task_3/widgets/search_bar.dart';
import 'package:flutter_day_13/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375.w,
        height: 812.h,
        color: const Color(0xff171e25),
        child: Stack(
          fit: StackFit.loose,
          children: [
            Column(
              children: [
                SafeArea(child: 30.height),
                const CustomSearchBar(),
                16.height,
                const MovieList(),
              ],
            ),

            /// Bottom Navigation Bar
            const CustomBottomBar(),
          ],
        ),
      ),
    );
  }
}

const List<String> movieNames = [
  "Avatar: The Way of Water",
  "The Shawshank Redemption",
  "The Godfather",
  "The Dark Knight",
  "Schindler's List",
  "The Lord of the Rings: The\nFellowship of the Ring",
  "The Good, the Bad and the Ugly",
  "Forrest Gump",
  "Fight Club",
  "Goodfellas",
  "Interstellar",
  "The Green Mile",
  "Spider-Man: Across the\nSpider-Verse",
  "The Lion King",
  "The Departed",
  "The Intouchables",
  "Operation 'Y' & Other\nShurik's Adventures",
  "WALL·E",
];
