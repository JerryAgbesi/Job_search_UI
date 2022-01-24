import 'package:flutter/material.dart';
import 'latest_jobs_card.dart';
import 'package:job_search_ui/models/jobs.dart';
import 'package:job_search_ui/constants.dart';

class LatestJobsListview extends StatelessWidget {
  LatestJobsListview({Key? key, required this.cards}) : super(key: key);

  List<Job> cards;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Latest Jobs',
              style: recommendedtitle,
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 230,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    final jobTile = cards[index];
                    return LatestJobsCard(
                      company: jobTile.company,
                      location: jobTile.location,
                      title: jobTile.title,
                      logo: jobTile.logoUrl,
                      isFulltime: jobTile.isFulltime,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 16,
                    );
                  },
                  itemCount: cards.length),
            )
          ],
        ),
      ),
    );
  }
}
