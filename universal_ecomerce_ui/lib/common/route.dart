import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();
NavigatorState get navigator => navigatorKey.currentState!;

PageRoute<T> buildRoute<T>(
  String name, {
  required WidgetBuilder builder,
  bool fullscreenDialog = false,
  bool maintainState = true,
  bool isInitialRoute = false,
}) {
  final settings = RouteSettings(
    name: name,
  );

  return defaultTargetPlatform == TargetPlatform.iOS
      ? CupertinoPageRoute<T>(
          builder: builder,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        )
      : MaterialPageRoute<T>(
          builder: builder,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        );
}
