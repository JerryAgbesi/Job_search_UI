import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_search_ui/constants.dart';

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
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      constraints: const BoxConstraints.expand(
        height: 250,
        width: 230,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: 80, width: 80, child: Image.asset(logo)),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFCDEEF8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'NEW',
                      style: blueText.copyWith(fontWeight: FontWeight.w800),
                    ),
                  ))
            ],
          ),
          Text(
            title,
            style: recommendedtitle.copyWith(
              fontSize: 18,
            ),
          ),
          Text(
            company,
            style: TextStyle(color: Colors.grey, fontSize: 15.0),
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Color(0xFFAEAEAE),
              ),
              const SizedBox(width: 8.0),
              Text(location,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.grey[600])),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              const Icon(
                Icons.shopping_bag_rounded,
                color: Color(0xFFAEAEAE),
              ),
              const SizedBox(width: 8.0),
              Text(
                isFulltime ? 'Full-Time' : 'Part-Time',
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.grey[600]),
              ),
            ],
          ),
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
