import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GGProgressIndicator extends StatelessWidget {
  const GGProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/animations/ripple-loading-animation.json',
        height: 250,
        width: 250,
      ),
    );
  }
}
