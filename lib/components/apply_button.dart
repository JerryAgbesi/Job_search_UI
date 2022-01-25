import 'package:flutter/material.dart';

class ApplyButton extends StatelessWidget {
  const ApplyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF57B8BF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text('Apply now'),
    );
  }
}
