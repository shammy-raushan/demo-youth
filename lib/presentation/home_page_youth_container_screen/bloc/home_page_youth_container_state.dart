// ignore_for_file: must_be_immutable

part of 'home_page_youth_container_bloc.dart';

/// Represents the state of HomePageYouthContainer in the application.
class HomePageYouthContainerState extends Equatable {
  HomePageYouthContainerState({this.homePageYouthContainerModelObj});

  HomePageYouthContainerModel? homePageYouthContainerModelObj;

  @override
  List<Object?> get props => [
        homePageYouthContainerModelObj,
      ];
  HomePageYouthContainerState copyWith(
      {HomePageYouthContainerModel? homePageYouthContainerModelObj}) {
    return HomePageYouthContainerState(
      homePageYouthContainerModelObj:
          homePageYouthContainerModelObj ?? this.homePageYouthContainerModelObj,
    );
  }
}
