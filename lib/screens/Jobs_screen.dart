import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_search_ui/components/components.dart';
import 'package:job_search_ui/models/jobs.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hey Urvashi,',
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              const Icon(
                Icons.notifications_none_rounded,
                size: 40,
              )
            ],
          ),
          Text(
            'Let\'s find your dream job ',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              prefixIconColor: Colors.grey,
              hintText: 'Search for jobs',
              hintStyle: const TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          LatestJobsListview(cards: jobs),
          RecommendedJobListView(recJobs: recommended)
        ],
      ),
    );
  }
}
