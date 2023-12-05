import 'package:flutter/material.dart';

class BoxCustomFade extends StatefulWidget {
  final double? height;
  final double? width;
  final Color? color;
  final Widget? widget;
  final Duration? duration;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Decoration? decoration;
  final void Function()? onTap;
  final void Function()? onLongPress;

  const BoxCustomFade({
    super.key,
    this.duration,
    this.decoration,
    this.height,
    this.margin,
    this.padding,
    this.onLongPress,
    this.width,
    this.color,
    this.onTap,
    this.widget,
  });

  @override
  State<BoxCustomFade> createState() => _BoxCustomFadeState();
}

class _BoxCustomFadeState extends State<BoxCustomFade>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      duration: widget.duration ?? const Duration(milliseconds: 1300),
      vsync: this);

  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.linear);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return FadeTransition(
        opacity: _animation,
        child: InkWell(
            onLongPress: widget.onLongPress,
            onTap: widget.onTap,
            child: Container(
                alignment: Alignment.center,
                height: widget.height,
                width: widget.width,
                margin: widget.margin ?? const EdgeInsets.all(0),
                padding: widget.padding ?? const EdgeInsets.all(0),
                decoration: widget.decoration ??
                    BoxDecoration(
                        color: widget.color,
                        borderRadius: BorderRadius.circular(6)),
                child: widget.widget)));
  }
}
