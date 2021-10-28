import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/screens/topic_screen.dart';
import 'package:news_app/utils/color_resources.dart';
import 'package:news_app/utils/dimensions.dart';
import 'package:news_app/utils/text_style.dart';
import 'package:news_app/utils/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorResources.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_DEFAULT),
              child: Container(
                height: size.height * .6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Swipe.',
                      style: merriWeatherBold.copyWith(fontSize: 42),
                    ),
                    Text(
                      'Read.',
                      style: merriWeatherBold.copyWith(fontSize: 42),
                    ),
                    Text(
                      'Learn.',
                      style: merriWeatherBold.copyWith(fontSize: 42),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_DEFAULT),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: size.height * .08,
                      child: ElevatedButtonCustom(
                        color: ColorResources.white,
                        onTap: () {
                          Get.to(() => TopicScreen());
                        },
                        text: 'Start Reading',
                        textStyle: GoogleFonts.roboto(
                          fontSize: 25,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * .01),
                    Row(
                      children: [
                        Text(
                          'Already have an account?',
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: size.width * .02),
                        Text(
                          'Log In',
                          style: robotoRegular,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
