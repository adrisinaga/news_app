import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/cores/controller/topic_controller.dart';
import 'package:news_app/utils/color_resources.dart';
import 'package:news_app/utils/dimensions.dart';
import 'package:news_app/utils/text_style.dart';
import 'package:news_app/utils/widgets.dart';

class TopicScreen extends StatefulWidget {
  TopicScreen({Key? key}) : super(key: key);

  @override
  State<TopicScreen> createState() => _TopicScreenState();
}

class _TopicScreenState extends State<TopicScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final TopicController controller = Get.put(TopicController());
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => Container(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_DEFAULT),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back_outlined)),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Follow Topic',
                            style: merriWeatherRegular.copyWith(fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: size.height * .02),
                  Container(
                    height: size.height * .06,
                    child: TextField(
                      onChanged: (value) {
                        controller.searchData(value);
                      },
                      controller: controller.searchController,
                      style: robotoRegular.copyWith(color: Colors.black87),
                      cursorColor: ColorResources.black,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: ColorResources.black,
                        ),
                        contentPadding: EdgeInsets.only(top: 10, left: 50),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        filled: true,
                        focusColor: ColorResources.black,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        hintStyle:
                            robotoRegular.copyWith(color: Colors.black87),
                        hintText: "Search Topic...",
                        fillColor: ColorResources.hintTextColor,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * .02),
                  Expanded(
                    child: Stack(
                      children: [
                        GridView.count(
                          childAspectRatio: 8 / 3,
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          children: controller.filteredTopic
                              .map(
                                (e) => GestureDetector(
                                  onTap: () {
                                    controller.setCategories(e);
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      border: Border.all(
                                          color: e.selected!
                                              ? ColorResources.white
                                              : Colors.transparent,
                                          width: 3),
                                      color: Colors.white70,
                                      image: DecorationImage(
                                        image: NetworkImage(e.image ?? ''),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            ('${e.title}'),
                                            style: robotoRegular.copyWith(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: size.height * .08,
                            width: size.width,
                            decoration: BoxDecoration(
                              gradient: SweepGradient(
                                center: FractionalOffset.topCenter,
                                startAngle: 2,
                                endAngle: 8,
                                colors: const <Color>[
                                  Colors.black,
                                  Colors.transparent,
                                ],
                                stops: const <double>[0.0, 0.8],
                              ),
                            ),
                            child: Center(
                              child: controller.title.value == 'Continue'
                                  ? ElevatedButtonCustom(
                                      onTap: () {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text("Welcome"),
                                        ));
                                      },
                                      text: 'Continue',
                                    )
                                  : Text(
                                      '${controller.title}',
                                      style: robotoRegular,
                                    ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
