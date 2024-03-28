import 'package:audio_ally/features/authentication/domain/repositories/auth_repository.dart';
import 'package:audio_ally/features/authentication/presentation/providers/state/auth_state.dart';
import 'package:audio_ally/services/user_cache_service/domain/repositories/user_cache_repository.dart';
import 'package:audio_ally/shared/domain/models/user/user_model.dart';
import 'package:audio_ally/shared/exceptions/http_exception.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthenticationRepository authRepository;
  final UserRepository userRepository;

  AuthNotifier({
    required this.authRepository,
    required this.userRepository,
  }) : super(const AuthState.initial());

  Future<void> loginUser(String username, String password) async {
    state = const AuthState.loading();
    final response = await authRepository.loginUser(
      user: User(username: username, password: password),
    );

    state = await response.fold(
      (failure) => AuthState.failure(failure),
      (user) async {
        final hasSavedUser = await userRepository.saveUser(user: user);
        if (hasSavedUser) {
          return const AuthState.success();
        }
        return AuthState.failure(CacheFailureException());
      },
    );
  }
}
