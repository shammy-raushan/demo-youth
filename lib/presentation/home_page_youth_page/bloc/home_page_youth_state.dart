// ignore_for_file: must_be_immutable

part of 'home_page_youth_bloc.dart';

/// Represents the state of HomePageYouth in the application.
class HomePageYouthState extends Equatable {
  HomePageYouthState({this.homePageYouthModelObj});

  HomePageYouthModel? homePageYouthModelObj;

  @override
  List<Object?> get props => [
        homePageYouthModelObj,
      ];
  HomePageYouthState copyWith({HomePageYouthModel? homePageYouthModelObj}) {
    return HomePageYouthState(
      homePageYouthModelObj:
          homePageYouthModelObj ?? this.homePageYouthModelObj,
    );
  }
}
