import 'package:flutter/material.dart';
import 'package:school_project/constant/colors.dart';

Widget textBold({
  double? size,
  Color? textColor,
  final text,
  final align,
}) {
  return Text(
    text,
    textAlign: align,
    style: TextStyle(
      color: textColor ?? noir,
      fontSize: size ?? 25,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
    ),
  );
}

/////
Widget textSimple({
  double? size,
  Color? textColor,
  final text,
  final align,
}) {
  return Text(
    text,
    textAlign: align ?? TextAlign.start,
    style: TextStyle(
      color: textColor ?? noir,
      fontSize: size ?? 16,
      fontWeight: FontWeight.normal,
      letterSpacing: 2,
    ),
  );
}
