import 'package:flutter/material.dart';

import '../app/app_text_style.dart';
import '../gen/colors.gen.dart';

class CardUnderscoreWidget extends StatelessWidget {
  const CardUnderscoreWidget({super.key, this.icon, required this.title});

  final Widget? icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: icon ?? const SizedBox.shrink(),
              ),

              Text(title, style: AppTextStyle.semiBold16),
              const Spacer(),
              Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: const Divider(color: ColorValue.formDisable),
        ),
      ],
    );
  }
}
