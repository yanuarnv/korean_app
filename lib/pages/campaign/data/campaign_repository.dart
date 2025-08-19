
import 'package:korean_app/pages/campaign/domain/adapter/repository_adapter.dart';
import 'package:korean_app/pages/campaign/domain/entity/campaign_entity.dart';

import 'capaign_local_provider.dart';

class CampaignRepository implements  ICampaignRepository{
  final ICampaignLocalProvider provider;
  CampaignRepository({required this.provider});
  @override
  Future<List<CampaignEntity>> getApplicationData() {
    return provider.getApplication();
  }

  @override
  Future<List<CampaignEntity>> getCompleteData() {
    return provider.getComplete();
  }

  @override
  Future<List<CampaignEntity>> getInProgressData() {
    return provider.getInProgress();
  }

}