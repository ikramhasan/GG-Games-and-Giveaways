import 'package:flutter/material.dart';

class InfoRichText extends StatelessWidget {
  final String text1;
  final String text2;

  const InfoRichText({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$text1:',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(width: 16),
          Text(
            text2,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 4),
        ],
      ),
    );
    // return Text.rich(
    //   TextSpan(
    //     text: '$text1: ',
    //     style: TextStyle(color: Theme.of(context).accentColor),
    //     children: [
    //       TextSpan(
    //         text: text2,
    //         style: TextStyle(color: Colors.white),
    //       ),
    //     ],
    //   ),
    // );
  }
}
