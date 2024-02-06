import 'package:flutter/material.dart';
import 'package:sushant_s_application1/presentation/home_page_youth_container_screen/home_page_youth_container_screen.dart';
import 'package:sushant_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homePageYouthPage = '/home_page_youth_page';

  static const String homePageYouthContainerScreen =
      '/home_page_youth_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homePageYouthContainerScreen: HomePageYouthContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomePageYouthContainerScreen.builder
      };
}
