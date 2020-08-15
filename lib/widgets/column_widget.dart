import 'package:flutter/material.dart';
class ColumnWidget extends StatelessWidget {
  const ColumnWidget();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Divider(),
        Text("Column 1"),
        Divider(),
        Text("Column 2"),
        Divider(),
        Text("Column 3"),
        Divider(),
      ],
    );
  }

}