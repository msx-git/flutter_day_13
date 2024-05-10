import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_13/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 22.w),
            decoration: BoxDecoration(
              color: const Color(0xf1212a2d),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: const Icon(CupertinoIcons.search),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.4),
                ),
              ),
            ),
          ),
        ),
        20.width,
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: const Color(0xff1f1519),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: const Icon(
            Icons.tune_rounded,
            color: Color(0xff530e8c),
          ),
        ),
        22.width,
      ],
    );
  }
}
