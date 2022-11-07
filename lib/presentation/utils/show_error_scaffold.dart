import 'package:flutter/material.dart';

void showErrorScaffold(BuildContext context, VoidCallback onPressed, String title) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    scaffoldMessenger.showSnackBar(
      SnackBar(
        duration: const Duration(minutes: 1),
        content: Text(title),
        action: SnackBarAction(onPressed: onPressed, label: 'Try again'),
      ),
    );
  });
}
