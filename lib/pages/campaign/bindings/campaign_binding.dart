import 'package:get/get.dart';
import 'package:korean_app/pages/campaign/data/campaign_repository.dart';
import 'package:korean_app/pages/campaign/data/capaign_local_provider.dart';
import 'package:korean_app/pages/campaign/domain/adapter/repository_adapter.dart';
import 'package:korean_app/pages/campaign/presentation/controllers/campaign_controller.dart';

class CampaignBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ICampaignLocalProvider>(()=>CampaignLocalProvider());
    Get.lazyPut<ICampaignRepository>(()=>CampaignRepository(provider: Get.find()));
    Get.lazyPut<CampaignController>(()=>CampaignController(repository: Get.find()));
  }
}