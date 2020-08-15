import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget();
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text("Row 1"),
        Padding(padding: EdgeInsets.all(16.0)),
        Text("Row 2"),
        Padding(padding: EdgeInsets.all(16.0)),
        Text("Row 3"),
      ],
    );
  }
}