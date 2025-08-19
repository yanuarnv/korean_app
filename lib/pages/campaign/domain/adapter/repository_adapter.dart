import 'package:korean_app/pages/campaign/domain/entity/campaign_entity.dart';

abstract class ICampaignRepository {
  Future<List<CampaignEntity>> getApplicationData();

  Future<List<CampaignEntity>> getInProgressData();

  Future<List<CampaignEntity>> getCompleteData();
}
