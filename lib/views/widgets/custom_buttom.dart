import 'package:flutter/material.dart';
import 'package:notes/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 48,
      decoration: BoxDecoration(
        color: const Color(KprimaryColorValue),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          "Add",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
