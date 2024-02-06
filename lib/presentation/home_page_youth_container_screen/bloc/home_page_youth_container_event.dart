// ignore_for_file: must_be_immutable

part of 'home_page_youth_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePageYouthContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePageYouthContainerEvent extends Equatable {}

/// Event that is dispatched when the HomePageYouthContainer widget is first created.
class HomePageYouthContainerInitialEvent extends HomePageYouthContainerEvent {
  @override
  List<Object?> get props => [];
}
