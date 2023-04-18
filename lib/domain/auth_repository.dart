import '../common/failure.dart';
import '../data/models/user.dart';

abstract class AuthRepository {
  Future<ApiReturnValue<User>> login(String email, String password);
}
