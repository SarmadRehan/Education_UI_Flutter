import 'package:cached_network_image/cached_network_image.dart';
import 'package:education/providers/dummy_data.dart';
import 'package:education/utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/routes.dart';
import '../widgets/favorite_course_card.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
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
            Icons.menu,
            size: 30.w,
            color: kLightTextColor,
          ),
        ),
        title: Center(
          child: Text(
            "Home",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 14.h),
            child: CircleAvatar(
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: "http://via.placeholder.com/50x50",
                  fit: BoxFit.fill,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kPageItemSpacing6,
          Padding(
            padding: kPagePadding,
            child: Text(
              'Welcome Back!',
              style: Theme.of(context).textTheme.headline3!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: kLightTextColor,
                  ),
            ),
          ),
          kPageItemSpacing,
          Padding(
            padding: kPagePadding,
            child: Text(
              'Benjamin Evalent',
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff999BA4),
                  ),
            ),
          ),
          kPageItemSpacing2,
          Padding(
            padding: kPagePadding,
            child: TextFormField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: kLightPlaceholderTextColor,
                ),
                hintText: 'Search',
                hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: kLightPlaceholderTextColor),
                fillColor: kLightPlaceholderColor,
              ),
            ),
          ),
          kPageItemSpacing2,
          Padding(
            padding: kPagePadding,
            child: Text(
              'Category',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: kLightTextColor,
                  ),
            ),
          ),
          kPageItemSpacing1,
          // Expanded(
          //   child: ListView(
          //     shrinkWrap: true,
          //     // scrollDirection: Axis.horizontal,
          //     itemCount: categories.length,
          //     itemBuilder: (context, index) => CategoryCard(
          //       category: categories[index],
          //     ),
          //   ),
          // ),
          kPageItemSpacing2,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: kPagePadding,
                child: Text(
                  'Favorite Course',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: kPagePadding,
                child: RichText(
                  text: TextSpan(
                    text: 'See all',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.restorablePushReplacementNamed(
                          context,
                          RouteGenerator.home,
                        );
                      },
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: favoriteCourses.length,
              itemBuilder: (context, index) => FavoriteCourseCard(
                favoriteCourse: favoriteCourses[index],
              ),
            ),
          ),
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
