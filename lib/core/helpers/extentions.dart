import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

extension NavigatorExtensions on BuildContext {
  Future<dynamic> pushNamed(String routeName) {
    return Navigator.of(this).pushNamed(routeName);
  }

  Future<dynamic> pushReplacementNamed(String routeName) {
    return Navigator.of(this).pushReplacementNamed(routeName);
  }

  void pop() {
    Navigator.of(this).pop();
  }

  Future<dynamic> pushReplacementNamedAndRemoveUntil(String routeName) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
    );
  }
}

