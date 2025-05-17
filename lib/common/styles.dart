import 'package:flutter/material.dart';

import 'app_colors.dart';

class Styles {
  static const double otpFieldWidth = 55.0;
  static const double otpFieldHeight = 60.0;

  static const Size textButtonSize = Size(double.infinity, 40);

  static const sizedBox = SizedBox();

  static const sizedBoxH02 = SizedBox(height: 2);
  static const sizedBoxW02 = SizedBox(width: 2);
  static const sizedBoxH04 = SizedBox(height: 4);
  static const sizedBoxH06 = SizedBox(height: 6);
  static const sizedBoxW06 = SizedBox(width: 6);
  static const sizedBoxW04 = SizedBox(width: 4);
  static const sizedBoxH08 = SizedBox(height: 8);
  static const sizedBoxW08 = SizedBox(width: 8);
  static const sizedBoxH10 = SizedBox(height: 10);
  static const sizedBoxW10 = SizedBox(width: 10);
  static const sizedBoxH15 = SizedBox(height: 15);
  static const sizedBoxW15 = SizedBox(width: 15);
  static const sizedBoxH20 = SizedBox(height: 20);
  static const sizedBoxH30 = SizedBox(height: 30);
  static const sizedBoxW30 = SizedBox(width: 30);
  static const sizedBoxW20 = SizedBox(width: 20);
  static const sizedBoxH100 = SizedBox(height: 100);
  static const sizedBoxW100 = SizedBox(width: 100);
  static const textFormConstrain = BoxConstraints(minHeight: 40, maxHeight: 40);
  static const textContentPadding = EdgeInsets.symmetric(vertical: 6, horizontal: 8);

  static const sliverToBoxAdapSH10 = SliverToBoxAdapter(child: sizedBoxH10);
  static const sliverToBoxAdap = SliverToBoxAdapter(child: sizedBox);

  static const spacer = Spacer();
  static const divider = Divider(
    thickness: 0.5,
    color: AppColors.primaryColor,
    indent: 10,
    endIndent: 10,
  );
  static const dividerTH2 = Divider(thickness: 2);
  static const sliverdividerTH2 = SliverToBoxAdapter(
    child: Divider(
      thickness: 0.5,
      color: AppColors.primaryColor,
      indent: 15,
      endIndent: 15,
    ),
  );

  static const sliverToBoxAdapterH08 = SliverToBoxAdapter(child: Styles.sizedBoxH08);
  static const sliverToBoxAdapterH10 = SliverToBoxAdapter(child: Styles.sizedBoxH10);
  static const sliverToBoxAdapterH20 = SliverToBoxAdapter(child: Styles.sizedBoxH20);
  static SizedBox sizeBoxH({required double height}) {
    return SizedBox(height: height);
  }

  static SizedBox sizeBoxW({required double width}) {
    return SizedBox(width: width);
  }

  //

  static const edgeInsetsZero = EdgeInsets.zero;
  static const edgeInsetsAll02 = EdgeInsets.all(02);
  static const edgeInsetsCard = EdgeInsets.symmetric(horizontal: 20, vertical: 14);
  static const edgeInsetCalendar = EdgeInsets.symmetric(horizontal: 15, vertical: 10);
  static const edgeInsetCalendarFilter = EdgeInsets.symmetric(horizontal: 15, vertical: 2);
  static const edgeInsetsActivities = EdgeInsets.symmetric(horizontal: 10, vertical: 4);
  static const edgeInsetsProfile = EdgeInsets.symmetric(horizontal: 10, vertical: 15);
  static const edgeInsetsAppBar = EdgeInsets.symmetric(vertical: 10, horizontal: 8);
  static const edgeInsetsAll04 = EdgeInsets.all(04);
  static const edgeInsetsAll06 = EdgeInsets.all(06);
  static const edgeInsetsAll08 = EdgeInsets.all(08);
  static const edgeInsetsAll10 = EdgeInsets.all(10);
  static const edgeInsetsAll15 = EdgeInsets.all(15);
  static const edgeInsetsAll18 = EdgeInsets.all(18);
  static const edgeInsetsAll20 = EdgeInsets.all(20);
  static const edgeInsetsAll25 = EdgeInsets.all(25);
  static const edgeInsetsAll30 = EdgeInsets.all(30);
  static const edgeInsetsAll35 = EdgeInsets.all(35);

  // Padding Vertical
  static const edgeInsetsOnlyH02 = EdgeInsets.symmetric(vertical: 02);
  static const edgeInsetsOnlyH04 = EdgeInsets.symmetric(vertical: 04);
  static const edgeInsetsOnlyH06 = EdgeInsets.symmetric(vertical: 06);
  static const edgeInsetsOnlyH08 = EdgeInsets.symmetric(vertical: 08);
  static const edgeInsetsOnlyH10 = EdgeInsets.symmetric(vertical: 10);
  static const edgeInsetsOnlyH15 = EdgeInsets.symmetric(vertical: 15);
  static const edgeInsetsOnlyH20 = EdgeInsets.symmetric(vertical: 20);

  // Padding Horizontal
  static const edgeInsetsOnlyW04 = EdgeInsets.symmetric(horizontal: 04);
  static const edgeInsetsOnlyW06 = EdgeInsets.symmetric(horizontal: 06);
  static const edgeInsetsOnlyW08 = EdgeInsets.symmetric(horizontal: 08);
  static const edgeInsetsOnlyW10 = EdgeInsets.symmetric(horizontal: 10);
  static const edgeInsetsOnlyW15 = EdgeInsets.symmetric(horizontal: 15);
  static const edgeInsetsOnlyW20 = EdgeInsets.symmetric(horizontal: 20);

  // Border Radius
  static final borderRadiusCircular04 = BorderRadius.circular(04);
  static final borderRadiusCircular05 = BorderRadius.circular(05);
  static final borderRadiusCircular08 = BorderRadius.circular(08);
  static final borderRadiusCircular10 = BorderRadius.circular(10);
  static final borderRadiusCircular12 = BorderRadius.circular(12);
  static final borderRadiusCircular15 = BorderRadius.circular(15);
  static final borderRadiusCircular20 = BorderRadius.circular(20);
  static final borderRadiusCircular25 = BorderRadius.circular(25);
  static final borderRadiusCircular40 = BorderRadius.circular(40);
  static final borderRadiusCircular50 = BorderRadius.circular(50);
  static final borderRadiusCircular200 = BorderRadius.circular(200);
  static const radiusCircular04 = Radius.circular(04);
  static const radiusCircular05 = Radius.circular(05);
  static const radiusCircular08 = Radius.circular(08);
  static const radiusCircular10 = Radius.circular(10);
  static const radiusCircular12 = Radius.circular(12);
  static const radiusCircular20 = Radius.circular(20);
    static final shapeBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(5));
  static const visualCardBorderRadius =
      BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20));

  // Decoration Underline input border
  static const underlineInputBorder =
      UnderlineInputBorder(borderSide: BorderSide(color: AppColors.white));

  static final inputBorderWithBorderRadius12 = OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.grey400, width: 2),
      borderRadius: borderRadiusCircular12);

  static const outlineInputBorderZero = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(0)),
    borderSide: BorderSide(color: AppColors.grey350),
  );
  static const outlineInputBorder4 = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
    borderSide: BorderSide(color: AppColors.grey350),
  );
  static const outlineInputDarkBorder4 = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
    borderSide: BorderSide(color: AppColors.grey400),
  );
  static final expansionTileBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    side: const BorderSide(color: AppColors.textBoxBorder),
  );
  static const outlineInputBorderNone = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide.none,
  );
  static const outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: AppColors.textBoxBorder),
  );
  static const outlineInputBorderRadius5Dark = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(05)),
    borderSide: BorderSide(color: AppColors.textBoxBorderDark, width: 2),
  );
  static const outlineInputBorderRadius5 = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(05)),
    borderSide: BorderSide(color: AppColors.textBoxBorderSecond),
  );
  static const outlineInputBorderRadius0 = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(0)),
    borderSide: BorderSide(color: AppColors.background),
  );
  static const outlineInputBorderFocus = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
    borderSide: BorderSide(color: AppColors.primaryColor),
  );
  static const outlineInputBorderFocusError = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
    borderSide: BorderSide(color: AppColors.alertButtonColor),
  );
  static const outlineInputBorderIncomeFocus = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
    borderSide: BorderSide(color: AppColors.primaryColor),
  );
  static const outlineInputBorderError = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
    borderSide: BorderSide(color: AppColors.alertButtonColor),
  );
  static const outlineInputBorderNoneZ5 = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide.none,
  );

  static const edgeInsetsSV06 = EdgeInsets.symmetric(vertical: 6.0);
  static final cardBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    side: BorderSide(
      color: AppColors.primaryColor.withOpacity(0.5),
    ),
  );

  // static const edgeInsetsCircular04 = EdgeInsets.(04);
  // static const edgeInsetsCircular08 = EdgeInsets.Circular(08);
  // static const edgeInsetsCircular10 = EdgeInsets.Circular(10);
  // static const edgeInsetsCircular15 = EdgeInsets.Circular(15);
  // static const edgeInsetsCircular20 = EdgeInsets.Circular(20);
}
