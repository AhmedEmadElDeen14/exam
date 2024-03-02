import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsApp extends StatefulWidget {
  static const String routeName = "NewsApp";

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  @override
  Widget build(BuildContext context) {
    int index =0;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(image: AssetImage("assets/images/VectorAliceCare.png")),
            SizedBox(width: 10,),
            Text(
              "AliceCare",
              style: GoogleFonts.milonga(
                  fontSize: 24, fontWeight: FontWeight.w400),
            )
          ],
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        unselectedItemColor: Color(0xff475467),

        selectedItemColor: Color(0xff027A48),
        items: [
          BottomNavigationBarItem(
              label: "Today",
              icon: Icon(
                Icons.calendar_month_outlined,
                color: Color(
                  0xff667085,
                ),
              )),
          BottomNavigationBarItem(
              label: "Insights",
              icon: Icon(
                Icons.view_list_sharp,
                color: Color(
                  0xff667085,
                ),
              )),
          BottomNavigationBarItem(
              label: "Chat",
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Color(
                  0xff667085,
                ),
              )),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 35, vertical: 25),
        child: Column(
          children: [
            TextField(
            ),
          ],
        ),
      ),
    );
  }
}
