import 'package:flutter/material.dart';
import 'package:weather_application_1/home.dart';

void main() {
  Paint.enableDithering = true;
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Weather(),
  ));
}

