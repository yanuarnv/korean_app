import 'package:freezed_annotation/freezed_annotation.dart';
part 'campaign_entity.freezed.dart';
part 'campaign_entity.g.dart';
@freezed
 abstract class CampaignEntity with _$CampaignEntity {
  const factory CampaignEntity({
    required String companyName,
    required String companyPicture,
    required String companyDescription,
    required List<String> companyCategories,
  }) = _CampaignEntity;

  factory CampaignEntity.fromJson(Map<String, dynamic> json) => _$CampaignEntityFromJson(json);
}
