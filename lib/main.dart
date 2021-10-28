import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/screens/topic_screen.dart';

import 'screens/splash_screen.dart';
import 'utils/color_resources.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart' as transition;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarColor: ColorResources.black,
          systemNavigationBarIconBrightness:Brightness.light,
      ),
      child: GetMaterialApp(
        defaultTransition: transition.Transition.cupertinoDialog,
        debugShowCheckedModeBanner: false,
        title: 'PPID KIP',
        theme: ThemeData(
          canvasColor: Colors.white,
          textTheme: GoogleFonts.merriweatherTextTheme(Theme.of(context).textTheme),
          primarySwatch: Colors.blue,
          brightness: Brightness.dark,
          scaffoldBackgroundColor: ColorResources.black

        ),
        initialRoute: '/splashScreen',
        getPages: [
          GetPage(name: '/splashScreen', page: () => SplashScreen() ),
          GetPage(name: '/topicScreen', page: () => TopicScreen() ),
        ],
      ),
    );
  }
}
