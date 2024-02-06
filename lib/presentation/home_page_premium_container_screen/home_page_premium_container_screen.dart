import 'package:flutter/material.dart';
import 'package:sushil_s_application5/core/app_export.dart';
import 'package:sushil_s_application5/presentation/home_page_premium_page/home_page_premium_page.dart';
import 'package:sushil_s_application5/widgets/custom_bottom_app_bar.dart';
import 'package:sushil_s_application5/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class HomePagePremiumContainerScreen extends StatelessWidget {
  HomePagePremiumContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePagePremiumPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomAppBar(context),
            floatingActionButton: CustomFloatingButton(
                height: 60,
                width: 60,
                backgroundColor: appTheme.blueGray900,
                child: CustomImageView(
                    imagePath: ImageConstant.imgLogo2,
                    height: 30.0.v,
                    width: 30.0.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePagePremiumPage;
      case BottomBarEnum.Payments:
        return "/";
      case BottomBarEnum.Dashboard:
        return "/";
      case BottomBarEnum.Notification:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePagePremiumPage:
        return HomePagePremiumPage();
      default:
        return DefaultWidget();
    }
  }
}
