import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  final String prefix1;
  final String prefix2;
  final String suffix1;
  final String suffix2;

  const AboutWidget({
    Key? key,
    required this.prefix1,
    required this.prefix2,
    required this.suffix1,
    required this.suffix2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildColumn(prefix1, suffix1),
        const SizedBox(width: 16),
        buildColumn(prefix2, suffix2),
      ],
    );
  }

  Expanded buildColumn(String text1, String text2) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$text1:',
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(width: 16),
          Text(
            text2,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
