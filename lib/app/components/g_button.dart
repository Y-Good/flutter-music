import 'package:flutter/material.dart';
import 'package:g_music/app/config/g_color.dart';
import 'package:g_music/app/config/g_iconfont.dart';

class GButton extends StatelessWidget {
  final String? label;
  final EdgeInsetsGeometry? padding;
  final TextStyle? labelStyle;
  final double? borderRadius;
  final Color? borderColor;
  final Color? backgroundColor;
  final IconData? icon;
  final double? iconSize;
  final Color? iconColor;
  final VoidCallback? onTap;
  final double? fontSize;
  final Color? fontColor;
  const GButton({
    Key? key,
    this.onTap,
    this.label,
    this.padding,
    this.labelStyle,
    this.borderRadius,
    this.borderColor,
    this.backgroundColor,
    this.icon,
    this.iconSize,
    this.iconColor,
    this.fontSize,
    this.fontColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:
            padding ?? const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
        decoration: BoxDecoration(
          color: backgroundColor ?? GColor.white,
          borderRadius: BorderRadius.circular(borderRadius ?? 4),
          border: Border.all(
            width: 1,
            color: borderColor ?? const Color(0xFFE8E8E8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Offstage(
              offstage: icon == null,
              child: Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Icon(
                  icon ?? GIconFont.iconCalendar,
                  size: iconSize ?? 12,
                  color: iconColor ?? GColor.primary,
                ),
              ),
            ),
            Text(
              label ?? 'Button',
              style: labelStyle ??
                  TextStyle(
                    fontSize: fontSize,
                    color: fontColor ?? GColor.primary,
                    height: 1.25,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
