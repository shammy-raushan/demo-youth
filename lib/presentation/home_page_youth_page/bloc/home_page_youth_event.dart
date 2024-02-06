// ignore_for_file: must_be_immutable

part of 'home_page_youth_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePageYouth widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePageYouthEvent extends Equatable {}

/// Event that is dispatched when the HomePageYouth widget is first created.
class HomePageYouthInitialEvent extends HomePageYouthEvent {
  @override
  List<Object?> get props => [];
}
