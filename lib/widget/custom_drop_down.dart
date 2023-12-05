// ignore_for_file: unnecessary_null_in_if_null_operators
import 'package:flutter/material.dart';

class DropDownCustom extends StatelessWidget {
  final Widget? underline;
  final Widget? icon;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final Color? dropdownColor;
  final Color? iconEnabledColor;
  final Color? iconDisabledColor;
  final List<DropdownMenuItem<Object>>? item;
  final String hint;
  final Object? value;
  final void Function(dynamic)? onChanged;

  const DropDownCustom({
    super.key,
    this.underline,
    this.icon,
    this.style,
    this.hintStyle,
    required this.item,
    required this.hint,
    this.dropdownColor,
    this.iconEnabledColor,
    this.iconDisabledColor,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<dynamic>(
        borderRadius: BorderRadius.circular(20),
        itemHeight: 50,
        padding: const EdgeInsets.all(0),
        value: value,
        underline: underline ?? null,
        icon: icon ?? null,
        dropdownColor: dropdownColor ?? null,
        style: style ?? null,
        iconEnabledColor: iconEnabledColor ?? null,
        iconDisabledColor: iconDisabledColor ?? null,
        isExpanded: true,
        onChanged: onChanged,
        hint: Text(hint, style: hintStyle),
        items: item);
  }
}
