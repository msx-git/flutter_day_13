import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_13/pages/task_2/models/product.dart';
import 'package:flutter_day_13/pages/task_2/widgets/product_details.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, i) {
          return ZoomTapAnimation(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => ProductDetails(product: products[i]),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
              padding: EdgeInsets.only(top: 300.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(products[i].imageUrl),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20.r),
              ),
              alignment: Alignment.bottomLeft,
              child: Text(
                products[i].name,
                style: const TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.black,
                ),
              ),
              // child: Image.network(products[i].imageUrl,fit: BoxFit.cover,),
            ),
          );
        },
      ),
    );
  }
}
