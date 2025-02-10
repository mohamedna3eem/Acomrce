import 'package:flutter/material.dart';

class DialogUtiles {
  static BuildContext? _context;

  static setContext(BuildContext context) {
    _context = context;
  }

  // Method to show a simple message to the user
  static void showMessage(String message) {
    if (_context == null) return;
    showDialog(
      context: _context!,
      builder: (context) => AlertDialog(
        title: Text('Message'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  // Method to show a loading dialog
  static void showLoading(String message, BuildContext context) {
    if (context == null) return;
    showDialog(
      context: context,
      barrierDismissible: false, // Disable dismissing by tapping outside
      builder: (context) => Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  // Method to hide the loading dialog
  static void hideLoading(BuildContext context) {
    if (context == null) return;
    Navigator.of(context).pop();
  }

  // Method to show a custom dialog with custom content
  static void showCustomDialog(Widget dialogContent ,BuildContext context) {
    if (context == null) return;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: dialogContent,
        actions: <Widget>[
          TextButton(
            child: Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
