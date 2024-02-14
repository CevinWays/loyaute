import 'package:flutter/material.dart';

import '../../../app/styles/loyaute_text_style.dart';

class LoyauteInputPin extends StatelessWidget {
  const LoyauteInputPin({
    super.key,
    this.autofocus = false,
    this.controller,
    this.validator,
    this.textStyle,
    this.margin,
  });

  final bool autofocus;
  final TextEditingController? controller;
  final Function(String? value)? validator;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.all(8.0),
      width: 69.75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            maxLength: 1,
            textAlign: TextAlign.center,
            autofocus: autofocus,
            key: key,
            validator: (value) => validator?.call(controller?.text),
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              counterText: '',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            style: textStyle ??
                LoyauteTextStyle.headline6(
                  context: context,
                ),
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ],
      ),
    );
  }
}
