import 'package:custom_os/core/logger.dart';
import 'package:flutter/material.dart';

class NavigatorService with LogMixin {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<T?> push<T>(MaterialPageRoute<T> pageRoute) async {
    log('push');
    if (navigatorKey.currentState == null) {
      log('push: Navigator State is null');
      return null;
    }
    return navigatorKey.currentState!.push(pageRoute);
  }

  Future<T?> pushReplacement<T>(
    MaterialPageRoute<T> pageRoute,
  ) async {
    log('pushReplacement');
    if (navigatorKey.currentState == null) {
      log('pushReplacement: Navigator State is null');
      return null;
    }
    return navigatorKey.currentState!.pushReplacement(pageRoute);
  }

  void pop<T>([T? result]) {
    log('pop:');
    if (navigatorKey.currentState == null) {
      log('goBack: Navigator State is null');
      return;
    }
    navigatorKey.currentState!.pop(result);
  }

  Future<T?> buildAndPush<T>(Widget child) async {
    log('buildAndPush: child: ${child.runtimeType}');
    return await push(
      MaterialPageRoute<T>(
        builder: (context) => child,
        settings: RouteSettings(name: child.runtimeType.toString()),
      ),
    );
  }

  Future<T?> buildAndPushReplacement<T>(Widget child) async {
    log('buildAndPushReplacement: child: ${child.runtimeType}');
    return await pushReplacement(
      MaterialPageRoute<T>(
        builder: (context) => child,
        settings: RouteSettings(name: child.runtimeType.toString()),
      ),
    );
  }
}
