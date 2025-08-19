// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CampaignEntity _$CampaignEntityFromJson(Map<String, dynamic> json) =>
    _CampaignEntity(
      companyName: json['companyName'] as String,
      companyPicture: json['companyPicture'] as String,
      companyDescription: json['companyDescription'] as String,
      companyCategories: (json['companyCategories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CampaignEntityToJson(_CampaignEntity instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'companyPicture': instance.companyPicture,
      'companyDescription': instance.companyDescription,
      'companyCategories': instance.companyCategories,
    };
