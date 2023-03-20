part of 'navigation_bloc.dart';

abstract class NavigationEvent extends Equatable {
  const NavigationEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends NavigationEvent {
  @override
  String toString() => 'AppStarted';
}

class PageTapped extends NavigationEvent {
  final int index;

  // ignore: prefer_const_constructors_in_immutables
  PageTapped({required this.index});

  @override
  String toString() => 'PageTapped: $index';
}
