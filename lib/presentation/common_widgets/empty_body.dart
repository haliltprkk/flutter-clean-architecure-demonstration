import 'package:flutter/material.dart';

class EmptyBody extends StatelessWidget {
  final String title;

  const EmptyBody(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Center(
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
      ),
    ));
  }
}
