import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_day_13/models/movie.dart';
import 'package:flutter_day_13/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key, required this.i, required this.movie});
  final int i;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
      child: Row(
        children: [
          Container(
            height: 90.h,
            width: 110.w,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              image: DecorationImage(
                image: AssetImage(movie.posterLink),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.center,
            child: Icon(Icons.play_circle_rounded,color: Colors.white,size: 30.h),
          ),
          10.width,
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Trailer $i',style: GoogleFonts.quicksand(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14.sp)),
              8.height,
              Text('${Random().nextInt(2)+1}m ${Random().nextInt(50)+1}s',style: TextStyle(color: Colors.white70,fontSize: 12.sp)),
              8.height,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: const Color(0xff1f1519),
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Text('Update',style: TextStyle(color: Colors.deepPurple,fontSize: 12.sp),),
              ),
            ],
          )
        ],
      ),
    );
  }
}
