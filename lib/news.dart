import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



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
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Articles, Video, Audio and More,...',
                ),

            ),
            CarouselSlider(
              options: CarouselOptions(height: 200.0),
              items: <String>["assets/images/Frame1.png","assets/images/Frame2.png"].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.amber
                        ),
                        child: Image(image: AssetImage("$i"),)
                    );
                  },
                );
              }).toList(),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Get Tips",
                        style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image(
                    image: AssetImage("assets/images/Frame5.png"),
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SmoothPageIndicator(
                    controller: PageController(),
                    count: 3,
                    effect: SlideEffect(
                        spacing: 8.0,
                        radius: 4.0,
                        dotWidth: 10.0,
                        dotHeight: 10.0,
                        paintStyle: PaintingStyle.fill,
                        dotColor: Color(0xffD9D9D9),
                        activeDotColor: Colors.grey),
                  ),
                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}
