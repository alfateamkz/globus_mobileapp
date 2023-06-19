part of 'discussions_bloc.dart';

abstract class DiscussionsState extends Equatable {
  final bool isLoading;
  const DiscussionsState({required this.isLoading});

  @override
  List<Object> get props => [];
}

class DiscussionsInitial extends DiscussionsState {
  const DiscussionsInitial() : super(isLoading: false);
}

class DiscussionsLoading extends DiscussionsState {
  const DiscussionsLoading() : super(isLoading: true);
}

class DiscussionsSuccess extends DiscussionsState {
  final DiscussionsResponse discussions;
  const DiscussionsSuccess(this.discussions) : super(isLoading: false);
}

class DiscussionsFailed extends DiscussionsState {
  const DiscussionsFailed() : super(isLoading: true);
}
