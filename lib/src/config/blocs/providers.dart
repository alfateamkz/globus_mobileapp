import 'package:alfateam/src/presentation/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocProviders {
  static final List<BlocProvider> providers = [
    ////////////////////////////////////////////////////////////////////////////
    /////////////////////            MAIN            ///////////////////////////
    BlocProvider<NavigationBloc>(create: (context) => NavigationBloc()),
  ];
}
