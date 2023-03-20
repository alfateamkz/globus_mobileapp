part of 'navigation_bloc.dart';

abstract class NavigationState extends Equatable {
  const NavigationState();

  @override
  List<Object> get props => [];
}

class CurrentIndexChanged extends NavigationState {
  final int currentIndex;

  const CurrentIndexChanged({required this.currentIndex});

  @override
  String toString() => 'CurrentIndexChanged to $currentIndex';
}

class PageLoading extends NavigationState {
  @override
  String toString() => 'PageLoading';
}

class HomePageLoaded extends NavigationState {
  @override
  String toString() => 'HomePageLoaded';
}

class SecondPageLoaded extends NavigationState {
  @override
  String toString() => 'CompanyPageLoaded';
}

class ThirdPageLoaded extends NavigationState {
  @override
  String toString() => 'ProductPageLoaded';
}

