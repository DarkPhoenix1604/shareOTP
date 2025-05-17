import 'package:flutter/material.dart';

import '../../common/app_colors.dart';
import '../../common/styles.dart';

class AppButton extends StatelessWidget {
  final void Function()? onPressed;
  final String name;
  final Color? buttonColor;
  final bool? enable;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWight;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;

  const AppButton({
    Key? key,
    this.onPressed,
    required this.name,
    this.buttonColor,
    this.enable,
    this.textColor,
    this.fontSize,
    this.fontWight,
    this.width,
    this.borderRadius = BorderRadius.zero,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              padding: MaterialStateProperty.all(padding ?? Styles.edgeInsetsAll10),
              elevation: MaterialStateProperty.all(enable ?? false ? 5 : 0),
              backgroundColor: MaterialStateProperty.all(buttonColor ?? AppColors.primaryColor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: borderRadius ?? Styles.borderRadiusCircular05),
              ),
            ),
            child: Text(
              name,
              style: TextStyle(
                fontSize: fontSize ?? 20,
                color: textColor ?? AppColors.white,
                fontWeight: fontWight ?? FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AppIconButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData icon;
  final bool? enable;
  final Color? iconColor;
  final double? width;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;

  const AppIconButton({
    Key? key,
    this.onPressed,
    required this.icon,
    this.iconColor,
    this.enable,
    this.width,
    this.borderRadius,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: DecoratedBox(
        decoration: const BoxDecoration(color: AppColors.primaryColor),
        child: SizedBox(
          height: 40,
          width: 40,
          child: Icon(
            icon,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String name;
  final double radius;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Color? splashColor;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;

  const CustomTextButton(
      {super.key,
      required this.name,
      this.radius = 5,
      this.onPressed,
      this.padding,
      this.backgroundColor,
      this.splashColor,
      this.borderColor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(splashColor),
        padding: MaterialStateProperty.all(padding ?? const EdgeInsets.all(11)),
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        ),
        side: MaterialStateProperty.all(BorderSide(color: borderColor ?? AppColors.primaryColor)),
      ),
      onPressed: onPressed,
      child: Text(
        name,
        style: TextStyle(
          color: textColor ?? AppColors.primaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    );
  }
}

class CustomTextIconButton extends StatelessWidget {
  final String name;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Color? splashColor;
  final IconData icon;
  final double? radius;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;

  const CustomTextIconButton(
      {super.key,
      required this.name,
      required this.icon,
      this.onPressed,
      this.padding,
      this.backgroundColor,
      this.splashColor,
      this.borderColor,
      this.radius,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(splashColor),
        padding: MaterialStateProperty.all(padding ?? EdgeInsets.zero),
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? 4)),
        ),
        side: MaterialStateProperty.all(BorderSide(color: borderColor ?? AppColors.primaryColor)),
        // fixedSize: MaterialStateProperty.all(const Size(55, 15)),
      ),
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 20,
        color: textColor ?? AppColors.primaryColor,
      ),
      label: Text(
        name,
        style: TextStyle(
          color: textColor ?? AppColors.primaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    );
  }
}

class CustomTextRichButton extends StatelessWidget {
  final String text;
  final String highlightText;
  final void Function()? onTap;
  const CustomTextRichButton(
      {super.key, required this.text, required this.highlightText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          children: [
            TextSpan(
              text: text,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: highlightText,
              style: const TextStyle(
                color: AppColors.primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
