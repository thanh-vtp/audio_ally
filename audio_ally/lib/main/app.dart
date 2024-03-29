import 'package:audio_ally/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:audio_ally/shared/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appThemeProvider);
    return MaterialApp(
      title: 'Flutter TDD',
      // theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      key: Get.key,
    );
  }
}
