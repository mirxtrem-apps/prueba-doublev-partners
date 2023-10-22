import 'package:flutter/material.dart';

abstract class LabelStyle {
  static TextStyle heading() {
    return const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle title() {
    return const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle subtitle() {
    return const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle paragraph() {
    return const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle caption() {
    return const TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle label() {
    return const TextStyle(
      fontSize: 12.0,
    );
  }
}
