import 'package:audio_ally/generated/l10n.dart';
import 'package:audio_ally/shared/theme/icons.dart';
import 'package:audio_ally/shared/theme/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class AlbumScreenState extends StatefulWidget {
  const AlbumScreenState({super.key});

  @override
  State<AlbumScreenState> createState() => __AlbumScreenStateState();
}

class __AlbumScreenStateState extends State<AlbumScreenState> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppbarApp(lable: S.current.albums),
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: Sz.i.s90, vertical: Sz.i.s30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                  'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
            ],
          ),
        ),
      ),
    );
  }

  AppBar AppbarApp({required String lable}) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          // Navigator.pop(context);
        },
        icon: SvgPicture.asset(AppIcons.back),
      ),
      title: Text(lable),
      centerTitle: true,
      actions: [
        IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.more))
      ],
    );
  }
}
