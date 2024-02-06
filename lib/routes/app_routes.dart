import 'package:flutter/material.dart';
import 'package:sushil_s_application5/presentation/home_page_premium_container_screen/home_page_premium_container_screen.dart';
import 'package:sushil_s_application5/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homePagePremiumPage = '/home_page_premium_page';

  static const String homePagePremiumContainerScreen =
      '/home_page_premium_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homePagePremiumContainerScreen: (context) =>
        HomePagePremiumContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
