import 'package:ogino_travel_news_app/components/profile_post.dart';
import 'package:ogino_travel_news_app/components/short_section.dart';
import 'package:ogino_travel_news_app/components/story_tile.dart';
import 'package:ogino_travel_news_app/components/text_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 216, 228),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.transparent),
            child: Padding(
              padding: EdgeInsets.zero,
              child: Row(children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/p3.png')),
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(16)),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Maya Ogino',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Flutter Developer',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromARGB(255, 142, 49, 145)),
                    child: Text(
                      'Following',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Konichiwa! I am Maya Ogino your half japanese and Filipina programmer, feel free to discover not just my programming but my country too!",
            textAlign: TextAlign.justify,
            style: GoogleFonts.poppins(
                color: Color.fromARGB(255, 96, 58, 121),
                fontWeight: FontWeight.w400,
                height: 1.2,
                fontSize: 14),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color.fromARGB(255, 152, 27, 79)),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(text1: '54,456'),
                        MyText2(text2: 'Followers')
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: Color.fromARGB(255, 237, 218, 238),
                    width: 5,
                    endIndent: 10,
                    indent: 10,
                    thickness: 1,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(text1: '2,22K'),
                        MyText2(text2: 'Posts')
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: Color.fromARGB(255, 237, 218, 238),
                    width: 5,
                    endIndent: 10,
                    indent: 10,
                    thickness: 1,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(text1: '9,99K'),
                        MyText2(text2: 'Following')
                      ],
                    ),
                  ),
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          const ShortSection(text: "maya's Posts", text1: 'View All'),
          const SizedBox(
            height: 20,
          ),
          MyPosts(),
          const SizedBox(
            height: 20,
          ),
          const ShortSection(text: 'Popular From mayathebee', text1: ''),
          const SizedBox(
            height: 20,
          ),
          const PopularPost(),
        ]),
      ),
    );
  }
}