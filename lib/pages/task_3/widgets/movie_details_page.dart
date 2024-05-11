import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '/generated/assets.dart';
import '/models/movie.dart';
import '/pages/task_3/widgets/bottom_section.dart';
import '/utils/extensions.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171e25),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Movie Image
            Container(
              width: double.infinity,
              height: 350.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(movie.posterLink),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(left: 22.w, top: 100.h, right: 22.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back, color: Colors.white, size: 26.h),
                    Icon(Icons.connected_tv_rounded,
                        color: Colors.white, size: 26.h)
                  ],
                ),
              ),
            ),
            20.height,

            /// Movie Name
            Row(
              children: [
                20.width,
                Expanded(
                  child: Text(
                    movie.title,
                    style: GoogleFonts.quicksand(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 22.sp),
                  ),
                ),
                ZoomTapAnimation(
                  child: SvgPicture.asset(Assets.iconsBookmark,
                      color: Colors.white70, width: 22.w),
                ),
                15.width,
                ZoomTapAnimation(
                  child: SvgPicture.asset(Assets.iconsSend,
                      color: Colors.white70, width: 16.w),
                ),
                20.width,
              ],
            ),
            20.height,
            Row(
              children: [
                20.width,
                Icon(Icons.star, color: Colors.deepPurple, size: 20.h),
                6.width,
                Text(
                  movie.rating.toStringAsFixed(1),
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 13.sp,
                  ),
                ),
                8.width,
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 16.h,
                  color: Colors.deepPurple,
                ),
                10.width,
                Text(
                  '${movie.releaseYear}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                10.width,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      border: Border.all(color: Colors.deepPurple)),
                  child: Text('${movie.minimumAge}+',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 10.sp,
                      )),
                ),
                10.width,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      border: Border.all(color: Colors.deepPurple)),
                  child: Text(movie.country,
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 10.sp,
                      )),
                ),
                10.width,
                ZoomTapAnimation(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        border: Border.all(color: Colors.deepPurple)),
                    child: Text('Subtitle',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 10.sp,
                        )),
                  ),
                )
              ],
            ),
            20.height,

            /// Buttons (play/download)
            Row(
              children: [
                20.width,
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 4.h),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.play_circle_fill_rounded,
                            color: Colors.white, size: 18.r),
                        6.width,
                        Text(
                          'Play',
                          style: GoogleFonts.quicksand(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                8.width,
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 4.h),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(Assets.iconsDownload,
                            width: 20.w, height: 16.h),
                        6.width,
                        Text(
                          'Download',
                          style: GoogleFonts.quicksand(
                              color: Colors.deepPurple,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                20.width,
              ],
            ),
            20.height,

            /// Movie Genre
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Genre: ${movie.genre.join(', ')}",
                style: GoogleFonts.quicksand(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            15.height,

            /// Movie Description
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                movie.description,
                style: GoogleFonts.quicksand(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            20.height,

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < movie.cast.length; i++)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20.w),
                          height: 50.h,
                          width: 50.w,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          clipBehavior: Clip.hardEdge,
                          child: Image.network(
                              "https://randomuser.me/api/portraits/men/${Random().nextInt(80)}.jpg"),
                        ),
                        10.width,
                        Text(
                          movie.cast[i].split(' ').join('\n'),
                          style: GoogleFonts.quicksand(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  20.width,
                ],
              ),
            ),
            20.height,
            BottomSection(movie: movie),
            20.height
          ],
        ),
      ),
    );
  }
}
