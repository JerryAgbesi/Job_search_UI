import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_search_ui/constants.dart';
import 'package:job_search_ui/screens/job_details_screen.dart';

class RecommendedJobsCard extends StatelessWidget {
  const RecommendedJobsCard(
      {Key? key,
      required this.company,
      required this.location,
      required this.title,
      required this.logo,
      required this.isFulltime,
      required this.time})
      : super(key: key);

  final String company;
  final String title;
  final String location;
  final String logo;
  final bool isFulltime;
  final String? time;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
        return JobDetailsPage(title: title, company: company, logoUrl: logo, location: location);
      })),
      child: Container(
        constraints: const BoxConstraints.expand(
          height: 150,
          width: double.infinity,
        ),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(right: 8.0),
                height: 80,
                width: 80,
                child: Image.asset(logo)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: recommendedtitle,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 15.0),
                        child: Icon(
                          FontAwesomeIcons.bookmark,
                          color: Color(0xFF818587),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    company,
                    style: companyStyle,
                  ),
                  Text(
                    location,
                    style:
                        companyStyle.copyWith(color: Colors.grey, fontSize: 13),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xFFE9E9E9),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                isFulltime ? 'Full-Time' : 'Part-Time',
                                style: blueText.copyWith(color: Colors.grey),
                              ),
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xFFCDEEF8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                time ?? '',
                                style: blueText,
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color(0xFFC1C1C1),
          ),
        ),
      ),
    );
  }
}
