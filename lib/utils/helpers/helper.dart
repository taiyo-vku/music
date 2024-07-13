import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaiyoHelper {
  TaiyoHelper._();

  // TODO : Navigate
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
        context,
        Platform.isIOS
            ? CupertinoPageRoute(builder: (_) => screen)
            : MaterialPageRoute(builder: (_) => screen));
  }
}
