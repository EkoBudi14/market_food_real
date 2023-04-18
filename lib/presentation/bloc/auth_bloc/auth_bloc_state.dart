part of 'auth_bloc_bloc.dart';

@immutable
abstract class AuthBlocState {}

class AuthBlocInitial extends AuthBlocState {}

class LoginFailedState extends AuthBlocState {
  String? message;
  LoginFailedState({this.message});
  @override
  List<Object?> get props => [message];
}

class LoginSuccedState extends AuthBlocState {
  final User? user;
  LoginSuccedState({this.user});
  @override
  List<Object?> get props => [user];
}
