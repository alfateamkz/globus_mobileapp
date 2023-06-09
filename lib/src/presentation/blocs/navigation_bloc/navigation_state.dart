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

class ChatPageLoaded extends NavigationState {
  @override
  String toString() => 'ChatPageLoaded';
}

class NotificationPageLoaded extends NavigationState {
  @override
  String toString() => 'NotificationPageLoaded';
}
class ProfilePageLoaded extends NavigationState {
  @override
  String toString() => 'ProfilePageLoaded';
}
