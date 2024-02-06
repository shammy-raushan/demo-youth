import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sushant_s_application1/presentation/home_page_youth_container_screen/models/home_page_youth_container_model.dart';
part 'home_page_youth_container_event.dart';
part 'home_page_youth_container_state.dart';

/// A bloc that manages the state of a HomePageYouthContainer according to the event that is dispatched to it.
class HomePageYouthContainerBloc
    extends Bloc<HomePageYouthContainerEvent, HomePageYouthContainerState> {
  HomePageYouthContainerBloc(HomePageYouthContainerState initialState)
      : super(initialState) {
    on<HomePageYouthContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePageYouthContainerInitialEvent event,
    Emitter<HomePageYouthContainerState> emit,
  ) async {}
}
