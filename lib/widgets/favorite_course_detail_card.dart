import 'package:education/modules/favorite_course.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/constants.dart';

class FavoriteCourseDetailCard extends StatelessWidget {
  final FavoriteCourse favoriteDetailCourses;
  const FavoriteCourseDetailCard(
      {Key? key, required this.favoriteDetailCourses})
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(14.h),
                child: ClipRRect(
                  borderRadius: kBorderRadiusAll,
                  child: Image.network(
                    favoriteDetailCourses.imageUrl,
                    fit: BoxFit.fill,
                    height: 186.h,
                    width: 358.w,
                  ),
                ),
              ),
              Positioned(
                bottom: 25.w,
                right: 25.w,
                child: ClipRRect(
                  borderRadius: kBorderRadiusAllHalf,
                  child: Container(
                    color: Colors.amber,
                    child: Center(
                      child: Padding(
                        padding: REdgeInsets.all(5.0),
                        child: Text(
                          favoriteDetailCourses.experience,
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
              favoriteDetailCourses.category,
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
                  favoriteDetailCourses.title,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: kLightTextColor,
                      ),
                ),
              ),
              Padding(
                padding: kPagePadding,
                child: Text(
                  favoriteDetailCourses.price,
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
                    favoriteDetailCourses.ratings,
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
                          favoriteDetailCourses.participants,
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