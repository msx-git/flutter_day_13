import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '/models/movie.dart';
import '/utils/extensions.dart';

class Tab3 extends StatelessWidget {
  const Tab3({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${movie.commentCount} Comments',
                  style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15.sp)),
              Text('See All',
                  style: GoogleFonts.quicksand(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp)),
            ],
          ),
          20.height,
          for (int i = 0; i < movie.commentCount; i++)
            Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      clipBehavior: Clip.hardEdge,
                      child: Image.network(
                          "https://randomuser.me/api/portraits/men/${Random().nextInt(80)}.jpg"),
                    ),
                    10.width,
                    Expanded(
                      child: Text(
                        "${movie.comments[i]['name']}",
                        style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    Icon(
                      CupertinoIcons.ellipsis_circle,
                      color: Colors.white70,
                      size: 25.h,
                    )
                  ],
                ),
                10.height,
                Text(
                  '${movie.comments[i]['comment']}',
                  style: GoogleFonts.quicksand(
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                ),
                10.height,
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.amber,
                      size: 25.h,
                    ),
                    6.width,
                    Text(
                      '${Random().nextInt(1500) + 1}       ${Random().nextInt(100) + 1} days ago',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12.sp,
                      ),
                    )
                  ],
                ),
                40.height,
              ],
            ),
        ],
      ),
    );
  }
}
