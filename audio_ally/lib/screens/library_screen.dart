import 'package:audio_ally/generated/l10n.dart';
import 'package:audio_ally/shared/domain/models/artist/artist_model.dart';
import 'package:audio_ally/shared/theme/app_colors.dart';
import 'package:audio_ally/shared/theme/icons.dart';
import 'package:audio_ally/shared/theme/images.dart';
import 'package:audio_ally/shared/theme/size.dart';
import 'package:audio_ally/shared/theme/test_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class LibraryScreen extends ConsumerStatefulWidget {
  const LibraryScreen({super.key});

  @override
  ConsumerState<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends ConsumerState<LibraryScreen> {
  final List<Artist> _listArtist = [
    Artist.fromJson({
      'dsds': 'ddd',
    })
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(AppIcons.back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              AppIcons.back,
              colorFilter:
                  const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
            ),
            onPressed: () {},
          )
        ],
        title: Text(
          'Library',
          style: AppTextStyles.heading3.copyWith(color: AppColors.white),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primary,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildTitle(
                lable: 'aaa',
                isActive: true,
                onTap: () {
                  _listArtist.sort((a, b) => a.name.compareTo(b.name));
                }),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final item = _listArtist[index];
                return _buildItemMostPlayed(
                    image: item.name,
                    name: item.name,
                    isActive: index == index,
                    onTap: () {});
              },
              itemCount: _listArtist.length,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemMostPlayed(
      {required String image,
      required String name,
      required bool isActive,
      required void Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Sz.i.s20, vertical: Sz.i.s16),
        child: Row(
          children: [
            Image.network(image),
            Gap(Sz.i.s16),
            Text(name,
                style: AppTextStyles.bodyNomalMedium
                    .copyWith(color: AppColors.primary)),
            const Spacer(),
            Row(
              children: [
                SvgPicture.asset(AppIcons.back,
                    colorFilter: ColorFilter.mode(
                        isActive ? AppColors.primary : AppColors.black,
                        BlendMode.srcIn)),
                Gap(Sz.i.s24),
                SvgPicture.asset(AppIcons.more,
                    colorFilter: const ColorFilter.mode(
                        AppColors.primary, BlendMode.srcIn)),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(
      {required String lable,
      required bool isActive,
      required void Function()? onTap}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sz.i.s20, vertical: Sz.i.s16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(lable,
              style: AppTextStyles.heading3.copyWith(color: AppColors.primary)),
          InkWell(
            onTap: onTap,
            child: Row(
              children: [
                Text('Sort by',
                    style: AppTextStyles.bodyNomalMedium
                        .copyWith(color: AppColors.primary)),
                Gap(Sz.i.s8),
                SvgPicture.asset(AppIcons.back,
                    colorFilter: ColorFilter.mode(
                        isActive ? AppColors.pink : AppColors.primary,
                        BlendMode.srcIn))
              ],
            ),
          )
        ],
      ),
    );
  }
}
