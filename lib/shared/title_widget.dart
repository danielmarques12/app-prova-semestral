import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  TitleWidget(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 27.5, fontWeight: FontWeight.w600),
    ));
  }
}
