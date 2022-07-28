import 'package:education/widgets/mentor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../providers/dummy_data.dart';
import '../utils/constants.dart';
import '../widgets/course_detail_card.dart';

class CourseDetails extends StatelessWidget {
  CourseDetails({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            size: 30.w,
            color: kLightTextColor,
          ),
        ),
        title: Center(
          child: Text(
            "Course Details",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        actions: [
          Padding(
            padding: kPagePadding,
            child: Icon(
              Icons.more_vert,
              size: 30.w,
              color: kLightTextColor,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 350.h,
            child: Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: courseDetails.length,
                itemBuilder: (context, index) => CourseDetailCard(
                  coursesDetail: courseDetails[index],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 94.h,
            child: Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: mentor.length,
                itemBuilder: (context, index) => MentorCard(
                  mentor: mentor[index],
                ),
              ),
            ),
          ),
          kPageItemSpacing2,
          Padding(
            padding: kPagePadding,
            child: Text(
              "Definition",
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          kPageItemSpacing3,
          Padding(
            padding: kPagePadding,
            child: Container(
              padding: kPagePadding,
              width: double.infinity,
              height: 88.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: kBorderRadiusCircular,
              ),
              child: Center(
                child: Text(
                  "Proin lobortis porttitor leo sed mattis. Aliq vulputate convallis mauris, at dictum elit feugiat. Praesent in nulla porttitor, lobortis.",
                  style: TextStyle(
                    color: const Color(0xff999BA4),
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ),
          ),
          kPageItemSpacing3,
          Padding(
            padding: kPagePadding,
            child: Container(
              margin: EdgeInsets.only(
                top: 14.h,
              ),
              width: double.infinity,
              height: 50.h,
              decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 112, 112, 115).withOpacity(0.2),
                borderRadius: kBorderRadiusCircular,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 140.w,
                        height: 38.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: kBorderRadiusCircular,
                        ),
                        child: Center(
                          child: Text(
                            "Materi",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xff5B73D0),
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 70.h),
                        child: Text(
                          "Reviews (453)",
                          style: TextStyle(
                            color: const Color(0xff999BA4),
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          kPageItemSpacing3,
          Padding(
            padding: kPagePadding,
            child: Container(
              margin: EdgeInsets.only(
                top: 14.h,
              ),
              padding: EdgeInsets.all(10.r),
              width: double.infinity,
              height: 50.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: kBorderRadiusCircular,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/audio_player.svg"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "01. Introduction",
                              style: TextStyle(
                                color: const Color(0xff999BA4),
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 150.r),
                        child: Text(
                          "3.32 Minutes",
                          style: TextStyle(
                            color: const Color(0xff28292C),
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          kPageItemSpacing2,
        ],
      ),
    );
  }
}
