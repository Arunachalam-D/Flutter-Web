import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<NavigateToLoginEvent>(navigateToLoginEvent);
    on<NavigateToSigninEvent>(navigateToSigninEvent);
  }

  FutureOr<void> navigateToLoginEvent(NavigateToLoginEvent event, Emitter<LoginState> emit) {
    emit(NavigateToLoginState());
  }

  FutureOr<void> navigateToSigninEvent(NavigateToSigninEvent event, Emitter<LoginState> emit) {
    print("In Sign In Page");
    emit(NavigateToSigninState());
  }
}
