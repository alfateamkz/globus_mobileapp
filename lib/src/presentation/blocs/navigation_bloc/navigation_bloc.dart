import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(HomePageLoaded()) {
    on<PageTapped>(_onPageTapped);
    on<AppStarted>(_onAppStarted);
  }

  int currentIndex = 0;

  void _onPageTapped(PageTapped event, Emitter<NavigationState> emit) {
    currentIndex = event.index;
    if (currentIndex == 0) {
      emit(HomePageLoaded());
    }
    if (currentIndex == 1) {
      emit(SecondPageLoaded());
    }
    if (currentIndex == 2) {
   
      emit(ThirdPageLoaded());
    }
  }

  void _onAppStarted(AppStarted event, Emitter<NavigationState> emit) {
    emit(HomePageLoaded());
  }
}
