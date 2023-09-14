import 'package:flutter/material.dart';

void showSnackBar(context) {
  ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text('Can\'t preview now')));
}
