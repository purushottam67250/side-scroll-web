import 'package:flutter/material.dart';

///
class AppContainer extends StatelessWidget {
  ///
  const AppContainer({
    Key? key,
    this.color,
    this.radius,
    this.child,
    this.padding,
    this.margin,
    this.onPressed,
    this.height,
    this.width,
    this.borderRadius,
    this.noShadow = false,
    this.background,
    this.backgroundColor,
  }) : super(key: key);

  ///
  final Color? color;

  ///
  final Widget? child;

  ///
  final double? radius;

  ///
  final EdgeInsetsGeometry? padding;

  ///
  final EdgeInsetsGeometry? margin;

  ///
  final void Function(BuildContext context)? onPressed;

  ///
  final double? height;

  ///
  final double? width;

  ///
  final BorderRadius? borderRadius;

  ///
  final bool noShadow;

  ///
  final DecorationImage? background;

  ///
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final brRadius = borderRadius ?? BorderRadius.circular(radius ?? 5);
    return Container(
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: brRadius,
        boxShadow: noShadow
            ? null
            : [
                BoxShadow(
                  color: Colors.grey.withOpacity(.2),
                  blurRadius: 10,
                  spreadRadius: 2,
                )
              ],
        image: background,
        color: backgroundColor ?? Colors.transparent,
      ),
      child: ClipRRect(
        borderRadius: brRadius,
        child: Material(
          type: background != null
              ? MaterialType.transparency
              : MaterialType.canvas,
          color:
              background == null ? color ?? Colors.white : Colors.transparent,
          child: InkWell(
            onTap: onPressed != null
                ? () {
                    onPressed?.call(context);
                  }
                : null,
            child: child,
          ),
        ),
      ),
    );
  }
}
