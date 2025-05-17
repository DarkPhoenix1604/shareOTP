import 'package:flutter/widgets.dart';

extension CustomNavigation on BuildContext {
  Future pushNamedAndRemoveAll(String routeName, {Object? arguments}) async {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (route) => false, arguments: arguments);
  }

  Future pushNamed(String routeName, {Object? arguments}) async {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  void pop([Object? object]) async {
    return Navigator.of(this).pop(object);
  }

  ///
  // double get width => MediaQuery.of(this).size.width;
  // double get height => MediaQuery.of(this).size.height;

  ///
}
