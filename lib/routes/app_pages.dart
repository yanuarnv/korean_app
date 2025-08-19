import 'package:get/get.dart';
import 'package:korean_app/pages/campaign/bindings/campaign_binding.dart';
import 'package:korean_app/pages/information/presentation/basic_information_view.dart';
import 'package:korean_app/pages/information/presentation/information_view.dart';
import 'package:korean_app/pages/information/presentation/password_setting_view.dart';

import '../pages/campaign/presentation/view/campaign_view.dart';
import '../pages/home/presentation/view/home_view.dart';

sealed class Routes {
  static const HOME = '/home';
  static const CAMPAIGN = '/campaign';
  static const INFORMATION = '/information';
  static const BASIC_INFORMATION = '/basic-information';
  static const PASSWORD_SETTING = '/password-setting';
}

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
      children: [
        GetPage(
          name: Routes.CAMPAIGN,
          page: () => const CampaignView(),
          binding: CampaignBinding(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 300),
        ),
        GetPage(
          name: Routes.INFORMATION,
          page: () => const InformationView(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 300),
          children: [
            GetPage(
              name: Routes.BASIC_INFORMATION,
              page: () => BasicInformationView(),
              transition: Transition.fadeIn,
              transitionDuration: const Duration(milliseconds: 300),
            ),
            GetPage(
              name: Routes.PASSWORD_SETTING,
              page: () => PasswordSettingView(),
              transition: Transition.fadeIn,
              transitionDuration: const Duration(milliseconds: 300),
            ),
          ],
        ),
      ],
    ),
  ];
}
