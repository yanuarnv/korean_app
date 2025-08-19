import 'package:get/get.dart';
import 'package:korean_app/pages/home/domain/entity/home_entity.dart';



class HomeController extends GetxController {
  HomeController();

  final data  = Rxn<HomeEntity>();
  final isLoading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    loadData();
    super.onInit();
  }
  void loadData() {
    isLoading.value = true;

    // Simulate API call delay
    Future.delayed(Duration(milliseconds: 1500), () {
      data.value = HomeEntity(
        application: 3,
        inProgress: 10,
        complete: 5,
      );
      isLoading.value = false;
    });
  }
}