import 'package:flutter/material.dart';

Widget postTypeBadge(String postType) {
  return Container(
    width: 60,
    height: 20,
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color(0xFF613FE5),
        width: 1,
      ),
      color: Colors.white,
      borderRadius: BorderRadius.circular(32),
    ),
    alignment: Alignment.center,
    child: Text(
      postType,
      style: const TextStyle(
        fontFamily: 'Plus Jakarta Sans',
        color: Color(0xFF613FE5),
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}