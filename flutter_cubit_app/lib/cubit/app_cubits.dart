import 'package:bloc/bloc.dart';

import 'app_states.dart';

class AppCubit extends Cubit<CubitStates> {
  AppCubit() : super(InitialState()) {
    emit(WelcomeState());
  }
}
