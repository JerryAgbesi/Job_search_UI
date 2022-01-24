import 'package:flutter/material.dart';
import 'package:job_search_ui/components/recommended_job_card.dart';
import 'components.dart';
import 'package:job_search_ui/models/jobs.dart';
import 'package:job_search_ui/constants.dart';

class RecommendedJobListView extends StatelessWidget {
  RecommendedJobListView({Key? key, required this.recJobs}) : super(key: key);

  List<Job> recJobs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recommended for you',
              style: recommendedtitle,
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  primary: true,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, int index) {
                    final jobTile = recJobs[index];
                    return RecommendedJobsCard(
                        company: jobTile.company,
                        location: jobTile.location,
                        title: jobTile.title,
                        logo: jobTile.logoUrl,
                        isFulltime: jobTile.isFulltime,
                        time: jobTile.time);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 16,
                    );
                  },
                  itemCount: recJobs.length),
            )
          ],
        ),
      ),
    );
  }
}
