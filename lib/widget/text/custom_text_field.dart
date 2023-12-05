import 'package:flutter/material.dart';
import '../../utils/theme/app_colors.dart';

class TextFieldCustom extends StatelessWidget {
  final String? hint;
  final IconData? icon;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final TextEditingController? textEditingController;
  final Widget? suffix;
  final int? maxLine;
  final int? maxLength;
  final double? paddingContent;
  final void Function()? onTapSuffix;
  final Function(String)? onFieldSubmitted;
  final Function()? onTapIcon;
  final TextInputAction? textInputAction;
  final bool? validate;
  final double? hintSize;
  final bool? enableBorder;
  final double? textHeight;
  final bool? enabled;
  final String? labelText;
  const TextFieldCustom({
    super.key,
    this.onTapSuffix,
    this.enableBorder,
    this.enabled,
    this.maxLine,
    this.textHeight,
    this.hintSize,
    this.textInputAction,
    this.hint,
    this.onFieldSubmitted,
    this.maxLength,
    this.icon,
    this.validate,
    this.paddingContent,
    this.onChanged,
    this.validator,
    this.obscureText,
    this.suffix,
    this.onTapIcon,
    this.textEditingController,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: const TextStyle(
            color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
        controller: textEditingController,
        onChanged: onChanged,
        validator: validator,
        onFieldSubmitted: onFieldSubmitted,
        obscureText: obscureText ?? false,
        maxLines: maxLine,
        enabled: enabled ?? true,
        maxLength: maxLength,
        textInputAction: textInputAction,
        decoration: InputDecoration(
            label: labelText == null
                ? null
                : Text(
                    labelText ?? '',
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
            border: enableBorder == true ? null : InputBorder.none,
            errorText:
                validate == false ? 'The Text Field  Can\'t Be Empty' : null,
            contentPadding: EdgeInsets.only(bottom: paddingContent ?? 0),
            hintText: hint ?? "",
            hintStyle: TextStyle(
                color: Colors.black38,
                height: textHeight ?? 1,
                fontSize: hintSize ?? 12.0),
            suffixIcon: suffix != null
                ? GestureDetector(onTap: onTapSuffix, child: suffix)
                : null,
            icon: icon != null
                ? GestureDetector(
                    onTap: onTapIcon,
                    child: Icon(size: 16, icon, color: AppColors.primary))
                : null));
  }
}
