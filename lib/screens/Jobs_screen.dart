import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hey Urvashi,',
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              const Icon(
                FontAwesomeIcons.bell,
                size: 30,
              )
            ],
          ),
          Text(
            'Let\'s find your dream job ',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 12,
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
        ],
      ),
    );
  }
}
