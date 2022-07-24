import 'package:education/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'utils/theme_light.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // Theme config
        themeMode: ThemeMode.system,
        theme: themeDataLight,
        // Routes config
        initialRoute: RouteGenerator.home,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
      designSize: const Size(414, 896),
    );
  }
}
