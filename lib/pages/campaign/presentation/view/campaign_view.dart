import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:korean_app/app/app_text_style.dart';
import 'package:korean_app/gen/colors.gen.dart';
import 'package:korean_app/pages/campaign/bindings/campaign_binding.dart';
import 'package:korean_app/pages/campaign/domain/entity/campaign_entity.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../shared/campaign_item_list_widget.dart';
import '../controllers/campaign_controller.dart';

class CampaignView extends StatefulWidget {
  const CampaignView({super.key});

  @override
  State<CampaignView> createState() => _CampaignViewState();
}

class _CampaignViewState extends State<CampaignView>
    with TickerProviderStateMixin {
  final controller = Get.find<CampaignController>();
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_tabChangesListen);
  }

  void _tabChangesListen() {
    switch (_tabController.index) {
      case 0:
        controller.getApplicationData();
        break;
      case 1:
        controller.getInProgressData();
      default:
        controller.getCompleteData();
    }
  }

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
        systemOverlayStyle: Theme.of(context).appBarTheme.systemOverlayStyle,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                "캠페인 매칭",
                style: AppTextStyle.headline1,
                semanticsLabel: "Campaign page title",
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Column(
                children: [
                  TabBar(
                    controller: _tabController,
                    indicatorColor: ColorValue.primary,
                    // Use your color constants
                    indicatorWeight: 3,
                    unselectedLabelColor: ColorValue.textSecondary,
                    labelColor: ColorValue.textPrimary,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelStyle: AppTextStyle.semiBold16,
                    unselectedLabelStyle: AppTextStyle.semiBold16,
                    tabs: const [
                      Tab(text: "신청"),
                      Tab(text: "진행중"),
                      Tab(text: "진행중"),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: List.generate(
                        3,
                        (_) => Obx(() {
                          final data = controller.data.value;
                          if (controller.status.value == Status.success) {
                            return ListView.separated(
                              padding: const EdgeInsets.all(16.0),
                              itemCount: data!.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(height: 16),
                              itemBuilder: (context, index) {
                                final item = data[index];
                                return CampaignItemListWidget(item: item);
                              },
                            );
                          }
                          return ListView.separated(
                            padding: const EdgeInsets.all(16.0),
                            itemCount: 6,
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 16),
                            itemBuilder: (_, __) =>
                                CampaignItemListWidgetX.skeleton(),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
