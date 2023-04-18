part of 'auth_bloc_bloc.dart';

@immutable
abstract class AuthBlocEvent {}


class LoginEvent extends AuthBlocEvent {
  final String email;
  final String password;
  LoginEvent(this.email, this.password);
}