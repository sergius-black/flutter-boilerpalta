import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:boilerpalta/src/presentation/routes/router.gr.dart';
import 'package:boilerpalta/src/presentation/shared/app_icon.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startSplashTimer();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Material(
      child: Center(child: AppIconWidget(imageSize: size.width * 0.7)),
    );
  }

  startSplashTimer() {
    var _duration = const Duration(milliseconds: 1000);
    return Timer(_duration,
        () => AutoRouter.of(context).replace(const SampleItemListRoute()));
  }
}
