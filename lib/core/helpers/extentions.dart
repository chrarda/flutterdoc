import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  void pushNamed(String routeName) {
    Navigator.of(this).pushNamed(routeName);
  }

  void pushNamedAndRemoveUntil(String routeName) {
    Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pushReplacementNamed(String routeName) {
    Navigator.of(this).pushReplacementNamed(routeName);
  }

  void pop() {
    Navigator.of(this).pop();
  }
}
