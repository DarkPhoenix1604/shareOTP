import 'package:flutter/material.dart';

import '../../common/app_colors.dart';

class LoadingWidget {
  static Widget get circularProgressIndicatorExpandRow {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [circularProgressIndicator],
      ),
    );
  }

  static Widget get circularProgressIndicatorWithRow {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [circularProgressIndicator],
    );
  }

  static Widget get circularProgressIndicator {
    return const CircularProgressIndicator(color: AppColors.primaryColor);
  }

  static Widget get circularProgressIndicatorWithOutRowSmall {
    return SizedBox(width: 20, height: 20, child: circularProgressIndicator);
  }

  static Widget get circularProgressIndicatorCenter {
    return Center(child: circularProgressIndicator);
  }
}
