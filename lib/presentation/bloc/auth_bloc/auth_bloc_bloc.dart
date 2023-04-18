import 'package:bloc/bloc.dart';
import 'package:market_food/common/failure.dart';
import 'package:market_food/domain/auth_repository.dart';
import 'package:meta/meta.dart';

import '../../../data/models/user.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';

class AuthBlocBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  late AuthRepository authRepository;
  AuthBlocBloc() : super(AuthBlocInitial()) {
    on<LoginEvent>(_loginBloc);
  }

  Future<void> _loginBloc(
      LoginEvent event, Emitter<AuthBlocState> state) async {
    ApiReturnValue<User> result =
        await authRepository.login(event.email, event.password);
    if (result.value != null) {
      emit(LoginSuccedState(user: result.value));
    } else {
      emit(LoginFailedState(message: result.message));
    }
  }
}
