import 'package:market_food/data/datasource/all_remote_datasource.dart';
import 'package:market_food/data/models/user.dart';
import 'package:market_food/common/failure.dart';
import 'package:market_food/domain/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AllRemoteDataSource allRemoteDataSource = AllRemoteDataSourceImpl();
  @override
  Future<ApiReturnValue<User>> login(String email, String password) {
    return allRemoteDataSource.login(email, password);
  }
}
