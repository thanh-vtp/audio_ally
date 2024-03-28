import 'package:audio_ally/shared/domain/models/either.dart';
import 'package:audio_ally/shared/domain/models/models.dart';
import 'package:audio_ally/shared/exceptions/http_exception.dart';

abstract class AuthenticationRepository {
  Future<Either<AppException, User>> loginUser({required User user});
}
