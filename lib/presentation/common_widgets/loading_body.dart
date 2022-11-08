import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingBody extends StatelessWidget {
  const LoadingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Center(
      child: CircularProgressIndicator(
        color: Colors.white,
      ),
    ));
  }
}
