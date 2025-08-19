import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:korean_app/app/app_text_style.dart';
import 'package:korean_app/gen/colors.gen.dart';
import 'package:korean_app/pages/home/presentation/controllers/home_controller.dart';
import 'package:korean_app/routes/app_pages.dart';
import 'package:korean_app/shared/card_underscore_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../gen/assets.gen.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  final informationMap = <String, Widget>{
    "My information": Assets.icons.user.svg(),
    "announcement": Assets.icons.note.svg(),
    "1: 1 inquiry": Assets.icons.messages.svg(),
    "FAQ": Assets.icons.messageQuestion.svg(),
    "Terms and Conditions and Policy": Assets.icons.taskSquare.svg(),
    "log out": Assets.icons.logout.svg(),
    "Membership withdrawal": Assets.icons.breakAway.svg(),
  };

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            homeController.loadData();
          },
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    headerWidget(),
                    const SizedBox(height: 16),
                    Obx(() {
                      if (homeController.isLoading.value == false) {
                        return GestureDetector(
                          onTap: () {
                            Get.toNamed('/home/campaign');
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: ColorValue.card,
                              border: Border.all(color: ColorValue.formDisable),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "My campaign",
                                      style: AppTextStyle.semiBold16,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black,
                                      size: 16,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          homeController.data.value!.application
                                              .toString(),
                                          style: AppTextStyle.semiBold24Purple,
                                        ),
                                        Text(
                                          "application",
                                          style: AppTextStyle.semiBold16,
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xffBCBCBC),
                                      size: 16,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          homeController.data.value!.inProgress
                                              .toString(),
                                          style: AppTextStyle.semiBold24Purple,
                                        ),
                                        Text(
                                          "in progress",
                                          style: AppTextStyle.semiBold16,
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xffBCBCBC),
                                      size: 16,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          homeController.data.value!.complete
                                              .toString(),
                                          style: AppTextStyle.semiBold24Purple,
                                        ),

                                        Text(
                                          "complete",
                                          style: AppTextStyle.semiBold16,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                      return Skeletonizer(
                        enabled: true,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: ColorValue.card,
                            border: Border.all(color: ColorValue.formDisable),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "My campaign",
                                    style: AppTextStyle.semiBold16,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 16,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "0",
                                        style: AppTextStyle.semiBold24Purple,
                                      ),
                                      Text(
                                        "application",
                                        style: AppTextStyle.semiBold16,
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xffBCBCBC),
                                    size: 16,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "0",
                                        style: AppTextStyle.semiBold24Purple,
                                      ),
                                      Text(
                                        "in progress",
                                        style: AppTextStyle.semiBold16,
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xffBCBCBC),
                                    size: 16,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "0",
                                        style: AppTextStyle.semiBold24Purple,
                                      ),

                                      Text(
                                        "complete",
                                        style: AppTextStyle.semiBold16,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                    const SizedBox(height: 40),
                    listInformation(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding headerWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello,", style: AppTextStyle.headline3),
              Text("Hong Gil -dong", style: AppTextStyle.headline1),
            ],
          ),
          Assets.img.uploadImg.image(width: 100, height: 100),
        ],
      ),
    );
  }

  Padding listInformation() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: List.generate(
          informationMap.length,
          (index) => GestureDetector(
            onTap: (){
              if(index == 0){
                Get.toNamed("/home/information");
              }
            },
            child: CardUnderscoreWidget(
              icon: informationMap.values.elementAt(index),
              title: informationMap.keys.elementAt(index),
            ),
          ),
        ),
      ),
    );
  }
}
