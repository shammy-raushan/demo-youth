// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'transfersection_item_model.dart';
import 'accountssection_item_model.dart';
import 'userprofilesection_item_model.dart';
import 'quickcheckoutsection_item_model.dart';
import 'creditcardcomponent_item_model.dart';
import 'userprofilegridsection_item_model.dart';

/// This class defines the variables used in the [home_page_youth_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomePageYouthModel extends Equatable {
  HomePageYouthModel({
    this.transfersectionItemList = const [],
    this.accountssectionItemList = const [],
    this.userprofilesectionItemList = const [],
    this.quickcheckoutsectionItemList = const [],
    this.creditcardcomponentItemList = const [],
    this.userprofilegridsectionItemList = const [],
  }) {}

  List<TransfersectionItemModel> transfersectionItemList;

  List<AccountssectionItemModel> accountssectionItemList;

  List<UserprofilesectionItemModel> userprofilesectionItemList;

  List<QuickcheckoutsectionItemModel> quickcheckoutsectionItemList;

  List<CreditcardcomponentItemModel> creditcardcomponentItemList;

  List<UserprofilegridsectionItemModel> userprofilegridsectionItemList;

  HomePageYouthModel copyWith({
    List<TransfersectionItemModel>? transfersectionItemList,
    List<AccountssectionItemModel>? accountssectionItemList,
    List<UserprofilesectionItemModel>? userprofilesectionItemList,
    List<QuickcheckoutsectionItemModel>? quickcheckoutsectionItemList,
    List<CreditcardcomponentItemModel>? creditcardcomponentItemList,
    List<UserprofilegridsectionItemModel>? userprofilegridsectionItemList,
  }) {
    return HomePageYouthModel(
      transfersectionItemList:
          transfersectionItemList ?? this.transfersectionItemList,
      accountssectionItemList:
          accountssectionItemList ?? this.accountssectionItemList,
      userprofilesectionItemList:
          userprofilesectionItemList ?? this.userprofilesectionItemList,
      quickcheckoutsectionItemList:
          quickcheckoutsectionItemList ?? this.quickcheckoutsectionItemList,
      creditcardcomponentItemList:
          creditcardcomponentItemList ?? this.creditcardcomponentItemList,
      userprofilegridsectionItemList:
          userprofilegridsectionItemList ?? this.userprofilegridsectionItemList,
    );
  }

  @override
  List<Object?> get props => [
        transfersectionItemList,
        accountssectionItemList,
        userprofilesectionItemList,
        quickcheckoutsectionItemList,
        creditcardcomponentItemList,
        userprofilegridsectionItemList
      ];
}
