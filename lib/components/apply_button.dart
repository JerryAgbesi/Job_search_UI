import 'package:flutter/material.dart';
import 'package:job_search_ui/constants.dart';

class ApplyButton extends StatelessWidget {
  const ApplyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF209FA6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text('Apply now',
          style: recommendedtitle.copyWith(
            color: Colors.white,
          )),
    );
  }
}
