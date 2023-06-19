import 'package:globus/src/locator.dart';
import 'package:globus/src/presentation/blocs/activities/activities_bloc.dart';
import 'package:globus/src/presentation/blocs/discussions/discussions_bloc.dart';
import 'package:globus/src/presentation/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocProviders {
  static final List<BlocProvider> providers = [
    ////////////////////////////////////////////////////////////////////////////
    /////////////////////            MAIN            ///////////////////////////
    BlocProvider<NavigationBloc>(create: (context) => NavigationBloc()),
    BlocProvider<ActivitiesBloc>(
        create: (context) =>
            locator<ActivitiesBloc>()..add(const ActivitiesGetStart())),
    BlocProvider<DiscussionsBloc>(
        create: (context) =>
            locator<DiscussionsBloc>()..add(const DiscussionsGetStart())),
  ];
}
