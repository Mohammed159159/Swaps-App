import 'package:flutter/material.dart';

LinearGradient gradient = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: <Color>[Color(0xFFFF795C), Color(0xFFFF6275)],
);

BoxDecoration decoration =
BoxDecoration(borderRadius: BorderRadius.circular(50), boxShadow: [
  BoxShadow(
      color: Colors.black26,
      blurRadius: 10,
      spreadRadius: -5,
      offset: Offset(0.0, 2.0))
]);