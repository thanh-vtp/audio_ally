import 'package:audio_ally/shared/theme/app_colors.dart';
import 'package:audio_ally/shared/theme/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LibraryScreen extends ConsumerStatefulWidget {
  const LibraryScreen({super.key});

  @override
  ConsumerState<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends ConsumerState<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(AppIcons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(AppIcons.search),
            onPressed: () {},
          )
        ],
        title: const Text('Library'),
        centerTitle: true,
        backgroundColor: AppColors.primary,
      ),
    );
  }
}
