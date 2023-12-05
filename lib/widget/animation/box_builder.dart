import 'package:flutter/material.dart';

class BoxCustom extends StatefulWidget {
  final double? height;
  final double? width;
  final Color? color;
  final Widget? widget;
  final Duration? duration;
  final void Function()? onTap;
  const BoxCustom({
    super.key,
    this.duration,
    required this.height,
    this.width,
    this.color,
    this.onTap,
    required this.widget,
  });

  @override
  State<BoxCustom> createState() => _BoxCustomState();
}

class _BoxCustomState extends State<BoxCustom> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation animation;
  @override
  void initState() {
    _controller = AnimationController(
        duration: widget.duration ?? const Duration(seconds: 2), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    animation = Tween(begin: 85.0, end: widget.height).animate(
      CurvedAnimation(
        curve: Curves.bounceOut,
        parent: _controller,
      ),
    );
    _controller.forward();
    return AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? child) {
          return InkWell(
              onTap: widget.onTap,
              child: Container(
                  height: animation.value,
                  width: widget.width,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
                  margin: const EdgeInsets.fromLTRB(4, 6, 6, 6),
                  decoration: BoxDecoration(
                      color: widget.color,
                      borderRadius: BorderRadius.circular(6)),
                  child: widget.widget));
        });
  }
}
