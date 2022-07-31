import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/mentor.dart';
import '../utils/constants.dart';

class MentorCard extends StatelessWidget {
  final Mentor mentor;
  const MentorCard({
    Key? key,
    required this.mentor,
  }) : super(key: key);

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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(14.h),
                child: CircleAvatar(
                  child: ClipOval(
                    child: CachedNetworkImage(
                      imageUrl: mentor.imageUrl,
                      fit: BoxFit.fill,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mentor.title,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: kLightTextColor,
                        ),
                  ),
                  kPageItemSpacing5,
                  Text(
                    mentor.category,
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: kLightPlaceholderTextColor,
                        ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 180.h),
                child: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          kPageItemSpacing,
        ],
      ),
    );
  }
}
