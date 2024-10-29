import 'package:flutter/material.dart';

Widget buildWhiteKey() {
  return Container(
    height: 400,
    width: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.black, width: 5),
      borderRadius: const BorderRadius.only(
        bottomRight: Radius.circular(8),
        bottomLeft: Radius.circular(8),
      ),
    ),
  );
}
