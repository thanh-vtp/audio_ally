import 'package:audio_ally/generated/l10n.dart';
import 'package:audio_ally/shared/theme/icons.dart';
import 'package:audio_ally/shared/theme/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

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
        body: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                // image: DecorationImage(
                //   image: AssetImage('assets/images/Albums.png'),
                //   fit: BoxFit.fill,
                // ),
                color: Color(0xffffffff),
              ),
            ),
            Positioned(
              top: Sz.i.s10,
              left: Sz.i.s10,
              right: Sz.i.s10,
              child: InkWell(
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('assets/images/avatar.png'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget AppbarApp({required String lable}) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: AppBar(
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
      ),
    );
  }
}
