import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/constants.dart';
import '../modules/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // semanticContainer: true,
      clipBehavior: Clip.hardEdge,
      shape: kRoundedRectangleBorderShape,
      // borderOnForeground: true,
      elevation: 4,
      // shadowColor:Colors.green,
      margin: REdgeInsets.all(5),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: category.imageUrl,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            height: 40.h,
            width: 40.w,
            fit: BoxFit.fill,
          ),
          Expanded(
            child: Padding(
              padding: REdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.title,
                  ),
                  Text(
                    category.classesDetails,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
