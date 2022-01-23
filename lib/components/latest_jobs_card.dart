import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LatestJobsCard extends StatelessWidget {
  const LatestJobsCard({
    Key? key,
    required this.company,
    required this.location,
    required this.title,
    required this.logo,
    required this.isFulltime,
  }) : super(key: key);

  final String company;
  final String title;
  final String location;
  final String logo;
  final bool isFulltime;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      constraints: const BoxConstraints.expand(
        height: 400,
        width: 250,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: 70, width: 70, child: Image.asset(logo)),
                Container(
                    color: const Color(0xFFCDEEF8),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('NEW'),
                    ))
              ],
            ),
          ),
          Text(title),
          Text(company),
          Row(
            children: [
              const Icon(FontAwesomeIcons.mapPin),
              Text(location),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                const Icon(FontAwesomeIcons.shoppingBag),
                Text(isFulltime ? 'Full-Time' : 'Part-Time'),
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFFC1C1C1),
        ),
      ),
    );
  }
}
