import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../models/movie.dart';
import '/pages/task_3/widgets/tab_1.dart';
import '/pages/task_3/widgets/tab_2.dart';
import '/pages/task_3/widgets/tab_3.dart';
import '/utils/extensions.dart';

class BottomSection extends StatefulWidget {
  const BottomSection({super.key, required this.movie});

  final Movie movie;

  @override
  State<BottomSection> createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
  int tab = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: ZoomTapAnimation(
                  onTap: () => setState(() => tab = 1),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Trailers',
                        style: TextStyle(
                            color: tab == 1 ? Colors.deepPurple : Colors.grey),
                      ),
                      10.height,
                      Container(
                          height: 3.h,
                          color: tab == 1 ? Colors.deepPurple : Colors.grey),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ZoomTapAnimation(
                  onTap: () => setState(() => tab = 2),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'More Like This',
                        style: TextStyle(
                            color: tab == 2 ? Colors.deepPurple : Colors.grey),
                      ),
                      10.height,
                      Container(
                          height: 3.h,
                          color: tab == 2 ? Colors.deepPurple : Colors.grey),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ZoomTapAnimation(
                  onTap: () => setState(() => tab = 3),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Comments',
                        style: TextStyle(
                            color: tab == 3 ? Colors.deepPurple : Colors.grey),
                      ),
                      10.height,
                      Container(
                          height: 3.h,
                          color: tab == 3 ? Colors.deepPurple : Colors.grey),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        15.height,

        /// Tab - 1
        if (tab == 1)
          for (int i = 1; i <= 3; i++) Tab1(i: i, movie: widget.movie),

        /// Tab - 2
        if (tab == 2) const Tab2(),

        /// Tab - 3
        if (tab == 3) Tab3(movie: widget.movie),
      ],
    );
  }
}
