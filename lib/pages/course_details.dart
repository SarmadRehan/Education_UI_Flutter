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
              Icons.menu_rounded,
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
              itemCount: courseDetails.length,
              itemBuilder: (context, index) => CourseDetailCard(
                coursesDetail: courseDetails[index],
              ),
            ),
          ),
          kPageItemSpacing2,
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: mentor.length,
              itemBuilder: (context, index) => MentorCard(
                mentor: mentor[index],
              ),
            ),
          ),
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
