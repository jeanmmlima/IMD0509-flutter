import 'package:flutter/material.dart';

class Country {
  final String id;
  final String title;
  final Color color;

  const Country({
    required this.id,
    required this.title,
    this.color = Colors.blue,
  });
}
