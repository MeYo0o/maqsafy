import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../texts/custom_texts.dart';

class CustomButtonTextOnly extends StatelessWidget {
  const CustomButtonTextOnly({
    Key? key,
    required this.text,
    this.edgeInsetsGeometry,
  }) : super(key: key);

  final String text;
  final EdgeInsetsGeometry? edgeInsetsGeometry;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: SSTArabicMedium(
        text: text,
        fontSize: 15,
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: edgeInsetsGeometry ?? EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
    );
  }
}
