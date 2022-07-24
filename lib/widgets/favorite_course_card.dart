import 'package:education/modules/favorite_course.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants.dart';

class FavoriteCourseCard extends StatelessWidget {
  final FavoriteCourse favoriteCourse;
  const FavoriteCourseCard({Key? key, required this.favoriteCourse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.hardEdge,
      shape: kRoundedRectangleBorderShape,
      // borderOnForeground: true,
      elevation: 4,
      // shadowColor:Colors.green,
      margin: REdgeInsets.all(10),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(14.h),
            child: ClipRRect(
              borderRadius: kBorderRadiusAll,
              child: Image.network(
                favoriteCourse.imageUrl,
                fit: BoxFit.fill,
                height: 208.h,
                width: 296.w,
              ),
            ),
          ),
          Positioned(
            bottom: 180.w,
            right: 25.w,
            child: ClipRRect(
              borderRadius: kBorderRadiusAllHalf,
              child: Container(
                color: Colors.amber,
                child: Center(
                  child: Padding(
                    padding: REdgeInsets.all(5.0),
                    child: Text(
                      'Experienced',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 140.w,
            left: 10.w,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Design',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: kLightPlaceholderTextColor),
                  ),
                  Text(
                    "\$90.00",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff5B73D0)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
