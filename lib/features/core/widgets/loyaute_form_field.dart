import 'package:flutter/material.dart';
import 'package:loyaute/app/styles/loyaute_text_style.dart';

import '../../../app/styles/colors.dart';

class LoyauteFormField extends StatelessWidget {
  const LoyauteFormField({
    Key? key,
    this.labelText,
    this.labelStyle,
    this.borderColor,
    this.textStyle,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.margin,
    this.onObscureTextToggle,
    this.validator,
    this.autofocus = false,
  }) : super(key: key);

  final String? labelText;
  final TextStyle? labelStyle;
  final TextStyle? textStyle;
  final Color? borderColor;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final EdgeInsetsGeometry? margin;
  final Function(bool obscureText)? onObscureTextToggle;
  final Function(String? value)? validator;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            textInputAction: TextInputAction.next,
            autofocus: autofocus,
            key: key,
            validator: (value) => validator?.call(controller?.text),
            controller: controller,
            keyboardType: keyboardType ?? TextInputType.text,
            obscureText: obscureText,
            decoration: InputDecoration(
              label: Text(labelText ?? ''),
              suffixIcon: keyboardType == TextInputType.visiblePassword
                  ? IconButton(
                      color: borderColor,
                      icon: Icon(
                        obscureText == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () => onObscureTextToggle?.call(!obscureText),
                    )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: borderColor ?? whiteClear100,
                ),
              ),
            ),
            style: textStyle ??
                LoyauteTextStyle.bodyText1(
                  context: context,
                ),
          ),
        ],
      ),
    );
  }
}
