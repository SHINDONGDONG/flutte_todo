import 'package:flutter/cupertino.dart';

class ReuseableText extends StatelessWidget {
  const ReuseableText({
    Key? key,
    required this.text,
    required this.style,
  }) : super(key: key);

  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      textAlign: TextAlign.left,
      softWrap: false,
      overflow: TextOverflow.fade,
      style: style,
    );
  }
}
