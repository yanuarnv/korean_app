import 'package:korean_app/pages/campaign/domain/entity/campaign_entity.dart';

abstract class ICampaignLocalProvider {
  Future<List<CampaignEntity>> getApplication();

  Future<List<CampaignEntity>> getComplete();

  Future<List<CampaignEntity>> getInProgress();
}

class CampaignLocalProvider extends ICampaignLocalProvider {
  final example = CampaignEntity(
    companyName: "회사명 나오는 자리",
    companyPicture: "https://picsum.photos/200",
    companyDescription: "소개말 나오는 자리입니다 한줄만 나옵니다. 소개말",
    companyCategories: ['F&B', '패션', '육아/키즈', '리빙/인테리어'],
  );

  @override
  Future<List<CampaignEntity>> getApplication() async{
    final genList = List.generate(3, (index) => example);
    return await Future.delayed(const Duration(seconds: 1), () => genList);
  }

  @override
  Future<List<CampaignEntity>> getComplete() async{
    final genList = List.generate(10, (index) => example);
    return await Future.delayed(const Duration(seconds: 1), () => genList);
  }

  @override
  Future<List<CampaignEntity>> getInProgress() async{
    final genList = List.generate(5, (index) => example);
    return await Future.delayed(const Duration(seconds: 1), () => genList);
  }
}
