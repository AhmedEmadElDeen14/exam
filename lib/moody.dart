import 'package:exam/news.dart';
import 'package:exam/workout.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MoodyApp extends StatelessWidget {
  static const String routeName = "MoodyApp";

  @override
  Widget build(BuildContext context) {
    int index = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Moody",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
        leading: Container(
          margin: EdgeInsets.only(left: 25),
          child: Image(
            image: AssetImage("assets/images/moodyLogo.png"),
          ),
        ),
        actions: [
          InkWell(
            child: Container(
              margin: EdgeInsets.only(right: 25),
              child: badges.Badge(
                badgeContent: Text(""),
                child: Icon(
                  Icons.notifications_active,
                  color: Color(0xff101828),
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xff027A48),
        items: [
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.home_filled,
                color: Color(
                  0xff667085,
                ),
              )),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.list_alt,
                color: Color(
                  0xff667085,
                ),
              )),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.calendar_month_outlined,
                color: Color(
                  0xff667085,
                ),
              )),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.person,
                color: Color(
                  0xff667085,
                ),
              )),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 35, vertical: 25),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Hello",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        ", Sara Rose",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "How are you feeling today ?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed(WorkoutApp.routeName);
                          },
                          child: Container(
                            child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xffE4E7EC),
                                child: Container(
                                  margin: EdgeInsets.all(3),
                                  child: Image(
                                    image: AssetImage("assets/images/love.png"),
                                  ),
                                )),
                          ),
                        ),
                        Text(
                          "Love",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed(NewsApp.routeName);
                          },
                          child: Container(
                            child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xffE4E7EC),
                                child: Container(
                                  margin: EdgeInsets.all(1),
                                  child: Container(
                                    margin: EdgeInsets.all(3),
                                    child: Image(
                                      image: AssetImage("assets/images/cool.png"),
                                      width: 100,
                                    ),
                                  ),
                                )),
                          ),
                        ),
                        Text(
                          "Cool",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          child: Container(
                            child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xffE4E7EC),
                                child: Container(
                                  margin: EdgeInsets.all(3),
                                  child: Image(
                                    image: AssetImage("assets/images/happy.png"),
                                    width: 100,
                                  ),
                                )),
                          ),
                        ),
                        Text(
                          "Happy",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          child: Container(
                            child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xffE4E7EC),
                                child: Container(
                                  margin: EdgeInsets.all(3),
                                  child: Image(
                                    image: AssetImage("assets/images/sad.png"),
                                    width: 100,
                                  ),
                                )),
                          ),
                        ),
                        Text(
                          "Sad",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 35, vertical: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Feature",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      child: Row(
                        children: [
                          Text(
                            "see more",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff027A48)),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Color(0xff027A48),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Image(
                  image: AssetImage("assets/images/feature.png"),
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
          Container(
            margin: EdgeInsets.symmetric(horizontal: 35, vertical: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exercise",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      child: Row(
                        children: [
                          Text(
                            "see more",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff027A48)),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Color(0xff027A48),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            height: 56,
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: Color(0xffF9F5FF),
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage("assets/images/Relaxation.png"),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Relaxation",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          child: Container(
                            width: 150,
                            height: 56,
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: Color(0xffF9F5FF),
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage("assets/images/Beathing.png"),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Beathing",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          child: Container(
                            width: 150,
                            height: 56,
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: Color(0xffF9F5FF),
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage("assets/images/Meditation.png"),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Meditation",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          child: Container(
                            width: 150,
                            height: 56,
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: Color(0xffF9F5FF),
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage("assets/images/Meditation.png"),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Yoga",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  

}
