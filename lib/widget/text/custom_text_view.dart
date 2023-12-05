import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class TextViewCustom extends StatelessWidget {
  final String? text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  final bool tr;
  final int? maxLine;
  final double? textHeight;
  final ui.TextDirection? textDirection;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;

  const TextViewCustom({
    super.key,
    this.text,
    this.textDirection,
    this.size,
    this.fontWeight,
    this.color,
    this.textHeight,
    this.tr = true,
    this.maxLine,
    this.textAlign,
    this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        textDirection: textDirection,
        textAlign: textAlign ?? TextAlign.start,
        maxLines: maxLine ?? 1,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
            text: tr
                ? text == null
                    ? ""
                    : text!
                : text ?? "",
            style: TextStyle(
                decoration: textDecoration,
                fontSize: size ?? 12.0,
                height: textHeight ?? 1,
                fontWeight: fontWeight ?? FontWeight.normal,
                color: color ?? Colors.black)));
  }
}
