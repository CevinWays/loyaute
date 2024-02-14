import 'package:flutter/material.dart';
import '../../../app/styles/colors.dart';
import '../../../app/styles/loyaute_text_style.dart';

class LoyauteButton extends StatelessWidget {
  const LoyauteButton({
    super.key,
    required this.textButton,
    this.onPressed,
    this.padding,
    this.margin,
    this.width,
    this.isDisabled = false,
    this.radius,
    this.backgroundColor = blueLoyautePrimary,
    this.borderSideColor = whiteClear100,
    this.textColor,
  });

  final String textButton;
  final Function? onPressed;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final bool isDisabled;
  final double? radius;
  final Color backgroundColor;
  final Color borderSideColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.all(0),
      width: width ?? double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: radius != null
                    ? BorderRadius.circular(radius ?? 0)
                    : BorderRadius.zero),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            isDisabled ? blackSpace40 : backgroundColor,
          ),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              color: borderSideColor,
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            padding ?? const EdgeInsets.all(0),
          ),
        ),
        onPressed: () => onPressed?.call(),
        child: Text(
          textButton,
          style: LoyauteTextStyle.button(
            context: context,
            color: textColor ?? blackSpace100,
          ),
        ),
      ),
    );
  }
}
