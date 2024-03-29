import 'package:audio_ally/screens/library_screen.dart';
import 'package:audio_ally/shared/util/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () async {
      // final isUserLoggedIn = await ref.read(userLoginCheckProvider.future);
      // final route = isUserLoggedIn
      // ? const DashboardRoute()
      // : LoginRoute() as PageRouteInfo;
      // ignore: use_build_context_synchronously

      navigateTo(const LibraryScreen(), clearStack: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Splash Screen',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
            ),
            TextButton(
                onPressed: () {
                  print('sss');
                  navigateTo(LibraryScreen());
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => LibraryScreen()));
                },
                child: Text('sss'))
          ],
        ),
      ),
    );
  }
}
