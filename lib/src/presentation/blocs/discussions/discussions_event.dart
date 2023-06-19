part of 'discussions_bloc.dart';

abstract class DiscussionsEvent extends Equatable {
  const DiscussionsEvent();

  @override
  List<Object> get props => [];
}

class DiscussionsGetStart extends DiscussionsEvent {
  const DiscussionsGetStart() : super();
}
