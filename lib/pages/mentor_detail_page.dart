import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../providers/dummy_data.dart';
import '../utils/constants.dart';
import '../widgets/mentor_detail_card.dart';

class MentorDetail extends StatelessWidget {
  MentorDetail({Key? key}) : super(key: key);
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
            "Detail Mentor",
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
          kPageItemSpacing2,
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: mentorDetail.length,
              itemBuilder: (context, index) => MentorDetailCard(
                mentorDetailCard: mentorDetail[index],
              ),
            ),
          ),
          kPageItemSpacing2,
          Padding(
            padding: kPagePadding,
            child: Text(
              "About",
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
                  "Dance teacher lobortis porttitor leo sed mattis. Aliq vulputate convallis mauris, at dictum elit feugiat. Praesent in nulla porttitor.",
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
              height: 80.h,
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
                            "Experience",
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
                        padding: EdgeInsets.only(right: 50.h),
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
          kPageItemSpacing2,
          Padding(
            padding: kPagePadding,
            child: Container(
              padding: EdgeInsets.all(14.r),
              width: double.infinity,
              height: 180.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: kBorderRadiusCircular,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.circle_outlined,
                        color: Colors.amber,
                        size: 20,
                      ),
                      Padding(
                        padding: kPagePadding,
                        child: Text(
                          'Eastern Dance Champion',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  kPageItemSpacing1,
                  Row(
                    children: [
                      const Icon(
                        Icons.circle_outlined,
                        color: Colors.amber,
                        size: 20,
                      ),
                      Padding(
                        padding: kPagePadding,
                        child: Text(
                          'Florida Dance Champion',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  kPageItemSpacing1,
                  Row(
                    children: [
                      const Icon(
                        Icons.circle_outlined,
                        color: Colors.amber,
                        size: 20,
                      ),
                      Padding(
                        padding: kPagePadding,
                        child: Text(
                          'Alabama Dance Champion',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  kPageItemSpacing1,
                  Row(
                    children: [
                      const Icon(
                        Icons.circle_outlined,
                        color: Colors.amber,
                        size: 20,
                      ),
                      Padding(
                        padding: kPagePadding,
                        child: Text(
                          'Paris Dance Champion',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontWeight: FontWeight.w400,
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
          Padding(
            padding: kPagePadding,
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                  backgroundColor: const Color(0xff5B73D0),
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  textStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Leave a Review',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
          ),
          kPageItemSpacing2,
          kPageItemSpacing2,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/home.svg"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/letter.svg"),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/message.svg"),
            label: 'Notifications',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
        ],
        selectedItemColor: Colors.blueAccent,
      ),
    );
  }
}
