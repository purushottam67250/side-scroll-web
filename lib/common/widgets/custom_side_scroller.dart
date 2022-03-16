import 'dart:math' as math;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomSideScroller extends StatefulWidget {
  const CustomSideScroller({
    Key? key,
    // required this.childBuilder,
    // required this.children,
    required this.child,
  }) : super(key: key);

  // final Widget Function(BuildContext) childBuilder;
  // final List<Widget> children;
  final Widget child;

  @override
  _CustomSideScrollerState createState() => _CustomSideScrollerState();
}

class _CustomSideScrollerState extends State<CustomSideScroller> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: Listener(
        onPointerSignal: (PointerSignalEvent event) {
          if (event is PointerScrollEvent) {
            // log(' ${event.localPosition}, ${event.original?.timeStamp} ');
            final newOffset =
                scrollController.offset + event.scrollDelta.dy * 3;
            if (event.scrollDelta.dy > 0) {
              // scroll down => scroll right here
              scrollController.animateTo(
                math.max(0, newOffset),
                duration: const Duration(
                  milliseconds: 400,
                ),
                curve: Curves.linearToEaseOut,
              );
            } else {
              // scroll up => scroll left here
              scrollController.animateTo(
                math.min(scrollController.position.maxScrollExtent, newOffset),
                duration: const Duration(
                  milliseconds: 400,
                ),
                curve: Curves.linearToEaseOut,
              );
            }
          }
        },
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          itemCount: 1,
          itemBuilder: (context, index) {
            return widget.child;
          },
          scrollDirection: Axis.horizontal,
          controller: scrollController,
        ),
      ),
    );
  }
}
