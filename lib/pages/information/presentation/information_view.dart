import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:korean_app/app/app_text_style.dart';
import 'package:korean_app/shared/card_underscore_widget.dart';

import '../../../gen/colors.gen.dart';

class InformationView extends StatelessWidget {
  const InformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorValue.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios, color: ColorValue.textPrimary),
          tooltip: 'Back',
        ),
        systemOverlayStyle: Theme
            .of(context)
            .appBarTheme
            .systemOverlayStyle,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("My information", style: AppTextStyle.headline1),
              const SizedBox(height: 30,),
              GestureDetector(
                  onTap: (){
                    Get.toNamed('/home/information/basic-information');
                  },
                  child: CardUnderscoreWidget(title: "Basic information")),
              GestureDetector(
                  onTap: (){
                    Get.toNamed('/home/information/password-setting');
                  },
                  child: CardUnderscoreWidget(title: "Password setting")),
              CardUnderscoreWidget(title: "Interest category"),
            ],
          ),
        ),
      ),
    );
  }
}
