import 'package:flutter/material.dart';

class TailPartCase extends StatelessWidget {
  Icon chevronIcon = const Icon(Icons.chevron_right);
  String afterRowText;
  String labelAfterIcon;
  String numberUnderLabel;

  TailPartCase(
      {Key? key,
      this.afterRowText = " ",
      required this.labelAfterIcon,
      required this.numberUnderLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(padding: EdgeInsets.only(top: 15)),
        Row(
          children: [
            Text(
              labelAfterIcon,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
            const Padding(padding: EdgeInsets.only(right: 30)),
            Text(
              afterRowText,
              style: const TextStyle(fontSize: 18, color: Color(0xFF444444)),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
            ),
          ],
        ),
        Text(numberUnderLabel, style: const TextStyle(fontSize: 15)),
      ],
    );
  }
}
