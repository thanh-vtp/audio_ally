import 'package:audio_ally/features/splash/presentation/screens/splash_screen.dart';
import 'package:audio_ally/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:audio_ally/shared/theme/app_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter TDD',
      theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme,
      // themeMode: themeMode,
      localizationsDelegates:localization,
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      navigatorKey: Get.key,
    );
  }
}
