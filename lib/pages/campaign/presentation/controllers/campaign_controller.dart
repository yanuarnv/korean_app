import 'package:get/get.dart';
import 'package:korean_app/pages/campaign/domain/adapter/repository_adapter.dart';
import 'package:korean_app/pages/campaign/domain/entity/campaign_entity.dart';

enum Status { loading, success, error }

class CampaignController extends GetxController {
  CampaignController({required this.repository});

  final ICampaignRepository repository;
  final data = Rxn<List<CampaignEntity>>(); // Rx nullable
  final status = Rx<Status>(Status.loading);

  @override
  void onInit() {
    // TODO: implement onInit
    getApplicationData();
    super.onInit();
  }

  Future<void> getApplicationData() async {
    status.value = Status.loading;
    final result = await repository.getApplicationData();
    status.value = Status.success;
    data.value = result;
  }

  Future<void> getInProgressData() async {
    status.value = Status.loading;
    final result = await repository.getInProgressData();
    status.value = Status.success;
    data.value = result;
  }

  Future<void> getCompleteData() async {
    status.value = Status.loading;
    final result = await repository.getCompleteData();
    status.value = Status.success;
    data.value = result;
  }
}
