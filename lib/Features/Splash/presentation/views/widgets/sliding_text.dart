
import 'package:flutter/material.dart';

class SlideingText extends StatelessWidget {
  const SlideingText({
    super.key,
    required this.sliderAnimation,
  });

  final Animation<Offset> sliderAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: sliderAnimation,
      builder: (context,_) {
        return SlideTransition(
          position: sliderAnimation,
          child: const Text(
            'Read Free Books',
            textAlign: TextAlign.center,
          ),
        );
      }
    );
  }
}

