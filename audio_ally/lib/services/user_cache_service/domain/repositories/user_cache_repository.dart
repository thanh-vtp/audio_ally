import 'package:audio_ally/shared/domain/models/either.dart';
import 'package:audio_ally/shared/domain/models/models.dart';
import 'package:audio_ally/shared/exceptions/http_exception.dart';

abstract class UserRepository {
  Future<Either<AppException, User>> fetchUser();
  Future<bool> saveUser({required User user});
  Future<bool> deleteUser();
  Future<bool> hasUser();
}
