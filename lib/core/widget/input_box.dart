import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../common/app_colors.dart';
import '../../common/app_text.dart';
import '../../common/styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String? headerText;
  final IconData? icon;
  final Widget? suffix;
  final Widget? preffix;
  final String? preffixText;
  final String? errorText;
  final double? fontSize;

  final double heigth;
  final TextAlign textAlign;
  final bool obscureText;
  final String? initialValue;
  final int? maxLength;
  final int maxLines;
  final bool contentPedding;
  final bool enable;
  final bool? showCursor;
  final bool? readOnly;

  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final double borderRadius;
  final void Function(String)? onChanged;
  final Function(String?)? onSaved;
  final void Function(String?)? onFieldSubmitted;
  final void Function()? onEditingComplete;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final InputBorder? border;
  const CustomTextFormField({
    Key? key,
    required this.hintText,
    this.headerText,
    this.icon,
    this.borderRadius = 10,
    this.heigth = 49,
    this.fontSize,
    this.obscureText = false,
    this.contentPedding = true,
    this.textAlign = TextAlign.start,
    this.enable = true,
    this.errorText,
    this.suffix,
    this.preffix,
    this.preffixText,
    this.initialValue,
    this.controller,
    this.maxLines = 1,
    this.maxLength,
    this.inputFormatters,
    this.textInputAction,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.keyboardType,
    this.focusNode,
    this.onChanged,
    this.onSaved,
    this.readOnly,
    this.showCursor,
    this.validator,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? boxHeight =
        maxLines > 1 ? null : (errorText != null || maxLength != null ? heigth + 25 : heigth);
    // double? boxHeight = maxLines > 1
    //     ? null
    //     : (errorText != null
    //         ? heigth + 20
    //         : maxLength != null
    //             ? heigth + 20
    //             : heigth);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: headerText != null,
          child: Text(
            headerText ?? '',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: AppColors.text,
            ),
          ),
        ),
        Visibility(visible: headerText != null, child: Styles.sizedBoxH10),
        SizedBox(
          height: boxHeight,
          child: TextFormField(
            cursorColor: AppColors.activeButtonColorFirst,
            showCursor: showCursor,
            readOnly: readOnly ?? false,
            maxLength: maxLength,
            style: const TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              fontSize: 12.5,
            ).copyWith(fontSize: fontSize ?? 16, color: AppColors.textColor2),
            textAlign: textAlign,
            decoration: InputDecoration(
              prefixIcon: preffix,
              suffixIcon: suffix,

              fillColor: AppColors.white,
              filled: true,
              // suffix: suffix,
              prefixText: preffixText,
              // prefix: preffix,
              hintText: hintText,
              errorText: errorText,
              enabled: enable,
              alignLabelWithHint: true,

              hintStyle: TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: fontSize ?? 16,
                color: AppColors.textBoxText,
              ),
              // constraints:
              //     maxLines > 1 ? null : BoxConstraints(maxHeight: heigth.h, minHeight: heigth.h),
              contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              border: border ?? Styles.outlineInputBorderZero,
              enabledBorder: border ?? Styles.outlineInputBorderZero,
              focusedBorder: border ?? Styles.outlineInputBorderZero,
              errorBorder: border ?? Styles.outlineInputBorderZero,
            ),
            inputFormatters: inputFormatters,
            onFieldSubmitted: onFieldSubmitted,
            onEditingComplete: onEditingComplete,
            maxLines: maxLines,
            initialValue: initialValue,
            controller: controller,
            obscureText: obscureText,
            focusNode: focusNode,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            onChanged: onChanged,
            onSaved: onSaved,
            validator: validator,
          ),
        ),
      ],
    );
  }
}

//
class CustomTextFormFieldFill extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final String lableText;
  final IconData? icon;
  final double? fontSize;

  final Widget? suffix;
  final bool obscureText;
  final bool enable;
  final String? initialValue;
  final int? maxLength;
  final int? maxLines;
  final double? labelfontSize;
  final double? errorfontSize;
  final bool contentPedding;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final double borderRadius;
  final Function(String)? onChange;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  const CustomTextFormFieldFill({
    Key? key,
    this.hintText,
    this.errorText,
    required this.lableText,
    this.icon,
    this.borderRadius = 10,
    this.obscureText = false,
    this.fontSize,
    this.contentPedding = true,
    this.suffix,
    this.enable = true,
    this.initialValue,
    this.controller,
    this.labelfontSize,
    this.errorfontSize,
    this.maxLines = 1,
    this.maxLength,
    this.inputFormatters,
    this.textInputAction,
    this.keyboardType,
    this.focusNode,
    this.onChange,
    this.onSaved,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primaryColorDark,
      maxLength: maxLength,
      maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
      style: TextStyle(
        fontSize: fontSize,
      ),
      decoration: InputDecoration(
        alignLabelWithHint: true,
        suffixIcon: suffix,
        errorText: errorText,
        errorStyle: TextStyle(fontSize: errorfontSize),
        focusColor: AppColors.primaryColor,
        fillColor: AppColors.white,
        filled: true,
        enabled: enable,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        hintStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.white,
          fontSize: labelfontSize,
        ),
        hintText: lableText,
      ),
      inputFormatters: inputFormatters ??
          [
            FilteringTextInputFormatter.deny(RegExp(r'[ ]')),
          ],
      maxLines: maxLines,
      initialValue: initialValue,
      controller: controller,
      obscureText: obscureText,
      focusNode: focusNode,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onChanged: onChange,
      onSaved: onSaved,
      validator: validator,
    );
  }
}

class TextFormFieldWithIcon extends StatelessWidget {
  final String label;
  final IconData suffixIcons;
  final void Function(String)? onChanged;
  const TextFormFieldWithIcon(
      {super.key, required this.label, this.suffixIcons = Icons.edit, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Text(
                label,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: InputDecorator(
            decoration: InputDecoration(
              suffixIcon: DecoratedBox(
                decoration: const BoxDecoration(),
                child: Icon(suffixIcons, color: AppColors.primaryColor),
              ),
              contentPadding: EdgeInsets.zero,
              fillColor: AppColors.background,
              border: Styles.outlineInputBorderNoneZ5,
              enabledBorder: Styles.outlineInputBorderNoneZ5,
              focusedBorder: Styles.outlineInputBorderNoneZ5,
              errorBorder: Styles.outlineInputBorderNoneZ5,
              filled: true,
            ),
            child: CustomTextFormField(
              hintText: '',
              border: Styles.outlineInputBorderNoneZ5,
              keyboardType: TextInputType.number,
              preffix: const Text(
                Apptext.rupees,
                style: TextStyle(
                    color: AppColors.primaryColor, fontWeight: FontWeight.w600, fontSize: 20),
              ),
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
