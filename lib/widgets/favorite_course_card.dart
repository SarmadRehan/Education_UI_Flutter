import 'package:education/models/course.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants.dart';

class FavoriteCourseCard extends StatelessWidget {
  final Course favoriteCourse;
  const FavoriteCourseCard({Key? key, required this.favoriteCourse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.hardEdge,
      shape: kRoundedRectangleBorderShape,
      elevation: 4,
      margin: REdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 15.h),
                child: ClipRRect(
                  borderRadius: kBorderRadiusAll,
                  child: Image.network(
                    favoriteCourse.imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                bottom: 35.w,
                right: 35.w,
                child: ClipRRect(
                  borderRadius: kBorderRadiusAllHalf,
                  child: Container(
                    color: Colors.amber,
                    child: Center(
                      child: Padding(
                        padding: REdgeInsets.all(5.0),
                        child: Text(
                          favoriteCourse.experience,
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
            ],
          ),
          Padding(
            padding: kPagePadding,
            child: Text(
              favoriteCourse.category,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: kLightPlaceholderTextColor),
            ),
          ),
          kPageItemSpacing5,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: kPagePadding,
                child: Text(
                  favoriteCourse.title,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: kLightTextColor,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 180.h),
                child: Text(
                  favoriteCourse.price,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff5B73D0)),
                ),
              ),
            ],
          ),
          kPageItemSpacing5,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 16.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    favoriteCourse.ratings,
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: kLightPlaceholderTextColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 190.h),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.group,
                        color: Colors.amber,
                        size: 16.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          favoriteCourse.participants,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: kLightPlaceholderTextColor),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          kPageItemSpacing,
        ],
      ),
    );
  }
}
