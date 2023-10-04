// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ContainerClass extends StatelessWidget {
  late final String time;
  late final Widget image;
  late final String degree;

  ContainerClass(
      {required this.time,
      required this.degree,
      required this.image,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:18.0),
      child: Container(
        height: 160,
        width: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: const Color(0xFF48319D),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Text(
                  time,
                  style: const TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w400),
                ),
              ),
              image,
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(degree,style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w600)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
