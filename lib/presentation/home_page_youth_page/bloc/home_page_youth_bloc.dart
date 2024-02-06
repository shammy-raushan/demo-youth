import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/transfersection_item_model.dart';
import '../models/accountssection_item_model.dart';
import '../models/userprofilesection_item_model.dart';
import '../models/quickcheckoutsection_item_model.dart';
import '../models/creditcardcomponent_item_model.dart';
import '../models/userprofilegridsection_item_model.dart';
import 'package:sushant_s_application1/presentation/home_page_youth_page/models/home_page_youth_model.dart';
part 'home_page_youth_event.dart';
part 'home_page_youth_state.dart';

/// A bloc that manages the state of a HomePageYouth according to the event that is dispatched to it.
class HomePageYouthBloc extends Bloc<HomePageYouthEvent, HomePageYouthState> {
  HomePageYouthBloc(HomePageYouthState initialState) : super(initialState) {
    on<HomePageYouthInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePageYouthInitialEvent event,
    Emitter<HomePageYouthState> emit,
  ) async {
    emit(state.copyWith(
        homePageYouthModelObj: state.homePageYouthModelObj?.copyWith(
      transfersectionItemList: fillTransfersectionItemList(),
      accountssectionItemList: fillAccountssectionItemList(),
      userprofilesectionItemList: fillUserprofilesectionItemList(),
      quickcheckoutsectionItemList: fillQuickcheckoutsectionItemList(),
      creditcardcomponentItemList: fillCreditcardcomponentItemList(),
      userprofilegridsectionItemList: fillUserprofilegridsectionItemList(),
    )));
  }

  List<TransfersectionItemModel> fillTransfersectionItemList() {
    return [
      TransfersectionItemModel(
          transferButton: ImageConstant.imgTransfer3WhiteA700,
          payMeText: "Pay Me"),
      TransfersectionItemModel(
          transferButton: ImageConstant.imgTransfer3WhiteA70070x70,
          payMeText: "Split Bill"),
      TransfersectionItemModel(
          transferButton: ImageConstant.imgTransfer3, payMeText: "Top Up"),
      TransfersectionItemModel(
          transferButton: ImageConstant.imgTransfer4, payMeText: "Transfer")
    ];
  }

  List<AccountssectionItemModel> fillAccountssectionItemList() {
    return [
      AccountssectionItemModel(
          currentBalanceText: "Current Balance",
          kwdImage: ImageConstant.img,
          kwdText: "KWD",
          currentBalanceText1: "Salary Account",
          accountNumberText: "1111 2222 1234"),
      AccountssectionItemModel(
          currentBalanceText: "Current Balance",
          currentBalanceText1: "Salary Account",
          accountNumberText: "1111 2222 1234")
    ];
  }

  List<UserprofilesectionItemModel> fillUserprofilesectionItemList() {
    return [
      UserprofilesectionItemModel(
          completeKYCImage: ImageConstant.imgTransfer3WhiteA70024x24,
          completeKYCText: "Complete your KYC",
          highPriorityImage1: ImageConstant.imgGroup,
          highPriorityImage2: ImageConstant.imgUnionRed60001,
          highPriorityText: "HIGH PRIORITY"),
      UserprofilesectionItemModel(
          completeKYCImage: ImageConstant.imgThumbsUp,
          completeKYCText: "Your credit card is \ndispatched",
          highPriorityImage1: ImageConstant.imgGroupAmber600,
          highPriorityImage2: ImageConstant.imgUnionAmber600,
          highPriorityText: "Low PRIORITY")
    ];
  }

  List<QuickcheckoutsectionItemModel> fillQuickcheckoutsectionItemList() {
    return [
      QuickcheckoutsectionItemModel(
          onlineGamesImage: ImageConstant.imgUnion,
          thumbsUpImage: ImageConstant.imgThumbsUpWhiteA700,
          onlineGamesText: "Online\nGames"),
      QuickcheckoutsectionItemModel(
          onlineGamesImage: ImageConstant.imgUnion,
          thumbsUpImage: ImageConstant.imgContrast,
          onlineGamesText: "Allowance\nTransfer"),
      QuickcheckoutsectionItemModel(
          onlineGamesImage: ImageConstant.imgUnion,
          thumbsUpImage: ImageConstant.imgVuesaxLinearMusic,
          onlineGamesText: "iTunes\nCards")
    ];
  }

  List<CreditcardcomponentItemModel> fillCreditcardcomponentItemList() {
    return [
      CreditcardcomponentItemModel(
          cardImage: ImageConstant.imgUnion176x148,
          userImage: ImageConstant.imgUserYellow800,
          cardText: "Credit Card",
          numberText: "1289",
          expiryText: "09/25"),
      CreditcardcomponentItemModel(
          cardImage: ImageConstant.imgUnion176x148,
          userImage: ImageConstant.imgImage1472,
          cardText: "Credit Card",
          numberText: "1289",
          expiryText: "09/25")
    ];
  }

  List<UserprofilegridsectionItemModel> fillUserprofilegridsectionItemList() {
    return [
      UserprofilegridsectionItemModel(
          stackImage: ImageConstant.imgUnion135x156,
          settingsImage: ImageConstant.imgSettings,
          arrowDownImage: ImageConstant.imgArrowDown,
          newText: "New",
          openAccountText: "Open a Family \nAccount"),
      UserprofilegridsectionItemModel(
          stackImage: ImageConstant.imgUnion135x156,
          openAccountText: "Open a Fixed \nDeposit"),
      UserprofilegridsectionItemModel(
          stackImage: ImageConstant.imgUnion135x156,
          openAccountText: "Apply For a \nCredit Card"),
      UserprofilegridsectionItemModel(
          stackImage: ImageConstant.imgUnion135x156,
          openAccountText: "Deliver Cash \nat Home")
    ];
  }
}
