part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class NavigateToLoginEvent extends LoginEvent{}

class NavigateToSigninEvent extends LoginEvent{}
