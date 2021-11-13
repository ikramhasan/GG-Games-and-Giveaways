import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GGBackButton extends StatelessWidget {
  const GGBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 32),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/arrow-back-circle-outline.svg',
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
