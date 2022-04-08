import 'package:flutter/material.dart';

PreferredSizeWidget myBar(String title) {
  return AppBar(
    title: Text(title),
    elevation: 0.0,
    centerTitle: true,
  );
}
