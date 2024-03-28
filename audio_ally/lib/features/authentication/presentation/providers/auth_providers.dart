import 'package:audio_ally/features/authentication/domain/providers/login_provider.dart';
import 'package:audio_ally/features/authentication/domain/repositories/auth_repository.dart';
import 'package:audio_ally/features/authentication/presentation/providers/state/auth_notifier.dart';
import 'package:audio_ally/features/authentication/presentation/providers/state/auth_state.dart';
import 'package:audio_ally/services/user_cache_service/domain/providers/user_cache_provider.dart';
import 'package:audio_ally/services/user_cache_service/domain/repositories/user_cache_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authStateNotifierProvider =
    StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) {
    final AuthenticationRepository authenticationRepository =
        ref.watch(authRepositoryProvider);
    final UserRepository userRepository =
        ref.watch(userLocalRepositoryProvider);
    return AuthNotifier(
      authRepository: authenticationRepository,
      userRepository: userRepository,
    );
  },
);
