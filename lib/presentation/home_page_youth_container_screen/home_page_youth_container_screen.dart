import 'bloc/home_page_youth_container_bloc.dart';
import 'models/home_page_youth_container_model.dart';
import 'package:flutter/material.dart';
import 'package:sushant_s_application1/core/app_export.dart';
import 'package:sushant_s_application1/presentation/home_page_youth_page/home_page_youth_page.dart';
import 'package:sushant_s_application1/widgets/custom_bottom_app_bar.dart';
import 'package:sushant_s_application1/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class HomePageYouthContainerScreen extends StatelessWidget {
  HomePageYouthContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageYouthContainerBloc>(
        create: (context) => HomePageYouthContainerBloc(
            HomePageYouthContainerState(
                homePageYouthContainerModelObj: HomePageYouthContainerModel()))
          ..add(HomePageYouthContainerInitialEvent()),
        child: HomePageYouthContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageYouthContainerBloc, HomePageYouthContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.homePageYouthPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomAppBarSection(context),
              floatingActionButton: CustomFloatingButton(
                  height: 60,
                  width: 60,
                  backgroundColor: appTheme.blueGray900,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgTelevision,
                      height: 30.0.v,
                      width: 30.0.h)),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked));
    });
  }

  /// Section Widget
  Widget _buildBottomAppBarSection(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePageYouthPage;
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
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePageYouthPage:
        return HomePageYouthPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
