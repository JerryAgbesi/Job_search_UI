import 'dart:math';

import 'package:flutter/material.dart';
import 'package:job_search_ui/components/components.dart';
import 'package:job_search_ui/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class JobDetailsPage extends StatelessWidget {
  JobDetailsPage({
    Key? key,
    required this.title,
    required this.company,
    required this.logoUrl,
    required this.location,
    this.time,
  }) : super(key: key);

  final String company;
  final String title;
  final String logoUrl;
  bool isNew = true;
  bool isFulltime = true;
  final String? time;
  final String location;

  @override
  Widget build(BuildContext context) {

    Random random = Random();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: [
            Flexible(
              child: Container(
                child: ListView(
                  shrinkWrap: true,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 40,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(right: 8.0),
                                height: 60,
                                width: 120,
                                child: Image.asset(logoUrl)),
                            const Icon(
                              FontAwesomeIcons.bookmark,
                              color: Color(0xFF818587),
                              size: 30,
                            ),
                          ],
                        ),
                        Text(title,
                            style: recommendedtitle.copyWith(
                                fontWeight: FontWeight.w600, fontSize: 30)),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xFFCDEEF8),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    time ?? 'New',
                                    style: blueText,
                                  ),
                                )),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.circle,
                              color: Colors.grey,
                              size: 15,
                            ),
                            const SizedBox(width: 10),
                            Text('${random.nextInt(200)} applicants'),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Color(0xFFAEAEAE),
                            ),
                            const SizedBox(width: 8.0),
                            Text(location,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[600])),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.shopping_bag_rounded,
                              color: Color(0xFFAEAEAE),
                            ),
                            const SizedBox(width: 8.0),
                            Text('Full-Time',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[600])),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.payments_rounded,
                              color: Color(0xFFAEAEAE),
                            ),
                            const SizedBox(width: 8.0),
                            Text('Rs 60000-80000',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[600])),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'Job Requirements',
                          style: recommendedtitle,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const Icon(
                              FontAwesomeIcons.bookReader,
                              color: Color(0xFFAEAEAE),
                            ),
                            const SizedBox(width: 8.0),
                            Text('2+ years of experience',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[600])),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 30,
                              child: Image.asset('assets/figma-icon.png'),
                            ),
                            const SizedBox(width: 8.0),
                            Text('Proficiency in Figma',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[600])),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Job Description', style: recommendedtitle),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: double.infinity,
                          height: 300,
                          child: ListView(
                            children: const [
                              Text(
                                  ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vel consectetur massa. Ut imperdiet elementum enim, ut luctus quam euismod eget. Cras posuere risus a ligula placerat molestie. Aenean fermentum euismod commodo. Nulla condimentum, purus nec porttitor semper, lorem ex lacinia nulla, nec congue enim est sit amet quam. Praesent nec dolor eu urna pellentesque lobortis. Fusce at iaculis nisl. Nam laoreet, felis quis ultrices ultricies, erat tortor malesuada diam, sed ultrices felis ipsum a leo. Etiam aliquam venenatis odio, id venenatis ipsum egestas nec. Suspendisse accumsan nisl ac nisl semper interdum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent ultrices enim vel tellus ullamcorper, eu consectetur arcu hendrerit. Proin a lacinia elit, vitae pretium elit. Sed viverra nisl a blandit tincidunt. Maecenas ultrices commodo augue, eu mattis est. Nullam vitae porttitor ligula.'
                                  'Integer non mi euismod, consectetur est sed, convallis augue. Vestibulum a est sed lorem feugiat sodales. Pellentesque a arcu arcu. Maecenas eget ante eu magna dignissim dignissim. Fusce aliquet velit ac justo tincidunt interdum sed id felis. Morbi fringilla ut ante ac condimentum. Nam sed augue non augue lacinia tempus vel quis dui. Etiam pretium congue feugiat. Fusce volutpat volutpat sem, vitae egestas urna dignissim eget.'
                                  'Pellentesque vel erat suscipit, pulvinar risus vel, euismod ante. Aliquam cursus neque nibh, non tincidunt nisl molestie quis. Duis nibh ante, elementum sed ligula sit amet, luctus pharetra felis. Proin nec erat eget arcu viverra scelerisque. Nullam lobortis velit eu semper tristique. Maecenas dapibus tortor felis, et sodales tellus consectetur at. Aliquam a scelerisque augue. Vestibulum hendrerit arcu at pellentesque finibus. Donec tristique ex est, ut molestie arcu pulvinar id. Mauris cursus enim a elit condimentum, at varius nunc semper. Nunc lacus sem, lobortis ac molestie id, mollis ut neque. Suspendisse sed orci ut enim sodales egestas ac in velit.'
                                  'Phasellus augue sapien, faucibus ac tincidunt eu, mattis molestie libero. Sed aliquet molestie ante sit amet lacinia. In at sem nulla. Curabitur ullamcorper nulla lacinia elit cursus, quis egestas justo pretium. Phasellus convallis viverra volutpat. Nam vel posuere nibh, blandit rhoncus odio. Vivamus tempor lacus sed nisl laoreet efficitur. Fusce facilisis, ipsum ut rutrum eleifend, sem neque rutrum velit, sit amet suscipit nibh libero nec ante. Sed a ultricies nulla. In vulputate, lorem id scelerisque vestibulum, lectus elit pulvinar felis, in varius tellus eros quis nibh. Vestibulum sed turpis vel nibh facilisis fermentum. Maecenas ut purus at nibh molestie luctus. Fusce a arcu et arcu posuere molestie. Pellentesque molestie sagittis erat et lobortis. Mauris congue, turpis vel tempus posuere, lectus urna elementum sem, et porttitor arcu elit in diam. Phasellus ut elementum massa.'
                                  'Nunc varius ultricies felis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis nec nisl lorem. Donec maximus, arcu in pulvinar rutrum, dui nibh dictum dolor, vel commodo dui nisl a quam. Maecenas tempor molestie mauris, at lacinia nulla aliquam sed. Integer efficitur metus viverra eros pulvinar tristique. Donec blandit lacus in sapien vehicula porta. Vestibulum vulputate diam at euismod pharetra. Integer convallis gravida arcu, et scelerisque lorem. Aliquam id nisi a purus sagittis imperdiet. Aliquam quis lobortis urna.'
                                  'Phasellus tincidunt quis purus id fermentum. Donec dapibus pharetra ante at imperdiet. Nullam vulputate enim et ipsum porta molestie. In aliquet sagittis mauris, eu aliquam leo ullamcorper eu. Nulla at lacus metus. Suspendisse aliquam velit ac laoreet maximus. Vivamus elementum imperdiet ipsum id varius. Suspendisse vel nisl sed ex pulvinar venenatis. Sed ullamcorper est et eros elementum iaculis. Maecenas malesuada in magna in condimentum.'
                                  'Morbi at lectus elit. Pellentesque turpis lectus, mattis non tellus sed, cursus scelerisque turpis. Phasellus rhoncus nibh nec purus sollicitudin volutpat. Suspendisse iaculis blandit ultricies. Aliquam massa neque, porta sit amet risus id, ultricies maximus lacus. Proin auctor lacus est, ornare lacinia ante tempus bibendum. Morbi sodales, dui id bibendum fringilla, risus arcu dictum eros, luctus commodo '),
                            ],
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ),
            Container(
                decoration: const BoxDecoration(
                    // color: Colors.green,
                    ),
                alignment: Alignment.bottomCenter,
                height: 100,
                width: double.infinity,
                child: ApplyButton()),
          ]),
        ),
      ),
    );
  }
}
