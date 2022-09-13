import 'package:flutter/material.dart';

import 'tail_part.dart';

class FieldContainers extends StatelessWidget {
  String rowText;
  String afterRowText;
  String underText;
  final Icon? mainIcon;
  bool? up;
  double? upCorner;
  double? downCorner;
  bool? all;

  FieldContainers({Key? key,
    up = false,
    this.mainIcon,
    all = false,
    this.underText = " ",
    this.afterRowText = " ",
    underLabel = false,
    this.rowText = " "})
      : super(key: key) {

    if (up == true) {
      upCorner = 15;
      downCorner = 0;
    } else {
      upCorner = 0;
      downCorner = 15;
    }
    if (all == true) {
      upCorner = 15;
      downCorner = 15;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[600],
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(upCorner!),
              topLeft: Radius.circular(upCorner!),
              bottomLeft: Radius.circular(downCorner!),
              bottomRight: Radius.circular(downCorner!))),
      padding: const EdgeInsets.symmetric(vertical: 1),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(width: 10),
              mainIcon!,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 5),
                  TailPartCase(
                      labelAfterIcon: rowText,
                      numberUnderLabel: underText,
                      afterRowText: afterRowText),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
