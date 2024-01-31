part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class NavigateToLoginState extends LoginState{}

class NavigateToSigninState extends LoginState{}

