import 'package:flutter/cupertino.dart';

class CharacterListInitialBody extends StatelessWidget {
  const CharacterListInitialBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Image.asset(
          "assets/ic_rick.png",
          width: 120,
          height: 120,
        ),
      ),
    );
  }
}
