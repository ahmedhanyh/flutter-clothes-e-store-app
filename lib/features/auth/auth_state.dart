part of 'auth_cubit.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

//login
class LoginLoading extends AuthState {}
class LoginSuccess extends AuthState {}
class LoginFailure extends AuthState {
  final String errMsg;
  LoginFailure(this.errMsg);
}
