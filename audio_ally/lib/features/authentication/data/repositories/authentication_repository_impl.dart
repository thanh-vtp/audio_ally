import 'package:audio_ally/features/authentication/data/datasource/auth_remote_data_source.dart';
import 'package:audio_ally/features/authentication/domain/repositories/auth_repository.dart';
import 'package:audio_ally/shared/domain/models/either.dart';
import 'package:audio_ally/shared/domain/models/user/user_model.dart';
import 'package:audio_ally/shared/exceptions/http_exception.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final LoginUserDataSource dataSource;

  AuthenticationRepositoryImpl(this.dataSource);

  @override
  Future<Either<AppException, User>> loginUser({required User user}) {
    return dataSource.loginUser(user: user);
  }
}
