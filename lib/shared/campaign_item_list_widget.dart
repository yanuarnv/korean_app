import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../app/app_text_style.dart';
import '../gen/colors.gen.dart';
import '../pages/campaign/domain/entity/campaign_entity.dart';

class CampaignItemListWidget extends StatelessWidget {
  const CampaignItemListWidget({super.key, required this.item});

  final CampaignEntity item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              children: [
                Container(width: 120, height: 120, color: ColorValue.formDisable),
                Image.network(item.companyPicture),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      item.companyName,
                      style: AppTextStyle.semiBold16,
                    ),
                  ),
                  Text(
                    item.companyDescription,
                    style: AppTextStyle.regular16,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      item.companyCategories.length,
                      (index) => Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(color: Color(0xffF8F3FE)),
                        child: Text(
                          item.companyCategories[index],
                          style: AppTextStyle.captionPurple,
                        ),
                      ),
                    ),
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

extension CampaignItemListWidgetX on CampaignItemListWidget {
  static Widget skeleton() => Skeletonizer(
    enabled: true,
    child: SizedBox(
      height: 120,
      child: Row(
        children: [
          Container(width: 120, height: 120, color: ColorValue.formDisable),
          const SizedBox(width: 8),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text("Company Name", style: AppTextStyle.semiBold16),
                  ),
                  Text(
                    "companyDescription",
                    style: AppTextStyle.regular16,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      4,
                      (index) => Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(color: Color(0xffF8F3FE)),
                        child: Text("F & B", style: AppTextStyle.captionPurple),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
