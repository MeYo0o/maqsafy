import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maqsafy/screens/common_widgets/texts/text_styles.dart';

class SSTArabicRoman extends StatelessWidget {
  const SSTArabicRoman({
    Key? key,
    required this.text,
    required this.fontSize,
    this.fontColor,
    this.containerAlignment,
    this.textAlign,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final Color? fontColor;
  final Alignment? containerAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: containerAlignment ?? Alignment.center,
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.center,
        style: AppTextStyles.sstArabicRomanStyle.copyWith(
          fontSize: fontSize.sp,
          color: fontColor ?? AppTextStyles.sstArabicRomanStyle.color,
        ),
      ),
    );
  }
}

class SSTArabicMedium extends StatelessWidget {
  const SSTArabicMedium({
    Key? key,
    required this.text,
    required this.fontSize,
    this.fontColor,
    this.containerAlignment,
    this.textAlign,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final Color? fontColor;
  final Alignment? containerAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: containerAlignment ?? Alignment.center,
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.center,
        style: AppTextStyles.sstArabicMediumStyle.copyWith(
          fontSize: fontSize.sp,
          color: fontColor ?? AppTextStyles.sstArabicMediumStyle.color,
        ),
      ),
    );
  }
}

class TajawalMedium extends StatelessWidget {
  const TajawalMedium({
    Key? key,
    required this.text,
    required this.fontSize,
    this.fontColor,
    this.containerAlignment,
    this.textAlign,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final Color? fontColor;
  final Alignment? containerAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: containerAlignment ?? Alignment.center,
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.center,
        style: AppTextStyles.tajawalMediumStyle.copyWith(
          fontSize: fontSize.sp,
          color: fontColor ?? AppTextStyles.tajawalMediumStyle.color,
        ),
      ),
    );
  }
}

class SSTArabicBold extends StatelessWidget {
  const SSTArabicBold({
    Key? key,
    required this.text,
    required this.fontSize,
    this.fontColor,
    this.containerAlignment,
    this.textAlign,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final Color? fontColor;
  final Alignment? containerAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: containerAlignment ?? Alignment.center,
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.center,
        style: AppTextStyles.sstArabicBoldStyle.copyWith(
          fontSize: fontSize.sp,
          color: fontColor ?? AppTextStyles.sstArabicBoldStyle.color,
        ),
      ),
    );
  }
}
