import 'package:flutter/material.dart';

Widget buildBlackKey() {
  return Container(
    height: 250,
    width: 60,
    margin: const EdgeInsets.only(left: 10, right: 10),
    decoration: const BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(5),
        bottomLeft: Radius.circular(5),
      ),
    ),
  );
}
