import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewsApp extends StatefulWidget {
  static const String routeName = "NewsApp";

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> with SingleTickerProviderStateMixin {
  TabController? tabController;
  int tabIndex = 0;

  @override
  void initState() {
    tabController =
        TabController(length: 4, vsync: this, initialIndex: tabIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(image: AssetImage("assets/images/VectorAliceCare.png")),
            SizedBox(
              width: 10,
            ),
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
          mainAxisSize: MainAxisSize.max,
          children: [
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                prefixIcon: Icon(Icons.search),
                hintText: 'Articles, Video, Audio and More,...',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DefaultTabController(
              length: 4,
              child: Flexible(
                child: ButtonsTabBar(
                  backgroundColor: Color(0xffF4EBFF),
                  unselectedBackgroundColor: Colors.white,
                  labelStyle: TextStyle(
                      color: Color(0xff6941C6),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  unselectedLabelStyle: TextStyle(
                    color: Color(0xff667085),
                    fontWeight: FontWeight.bold,
                  ),
                  borderWidth: 1,
                  unselectedBorderColor: Color(0xffD6BBFB),
                  radius: 100,
                  buttonMargin: EdgeInsets.symmetric(horizontal: 8),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  borderColor: Color(0xffD6BBFB),
                  tabs: [
                    Tab(
                      text: "Discover",
                    ),
                    Tab(
                      text: "News",
                    ),
                    Tab(
                      text: "Most Viewed",
                    ),
                    Tab(
                      text: "Saved",
                    ),
                  ],
                  controller: tabController,
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  ListView(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Hot topics",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "see more",
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xff5925DC)),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: Color(0xff5925DC),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CarouselSlider(
                            options: CarouselOptions(
                                aspectRatio: 2.0,
                                enlargeCenterPage: true,
                                enableInfiniteScroll: false,
                                initialPage: 1),
                            items: <String>[
                              "assets/images/Frame1.png",
                              "assets/images/Frame2.png"
                            ].map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                      child: Image(
                                    image: AssetImage("$i"),
                                  ));
                                },
                              );
                            }).toList(),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Get Tips",
                              style:
                                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
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
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Cycle Phases and Period",
                                style:
                                TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "see more",
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xff5925DC)),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: Color(0xff5925DC),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Column(
                              children: [
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Hot topics",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "see more",
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xff5925DC)),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: Color(0xff5925DC),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CarouselSlider(
                            options: CarouselOptions(
                                aspectRatio: 2.0,
                                enlargeCenterPage: true,
                                enableInfiniteScroll: false,
                                initialPage: 1),
                            items: <String>[
                              "assets/images/Frame1.png",
                              "assets/images/Frame2.png"
                            ].map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                      child: Image(
                                        image: AssetImage("$i"),
                                      ));
                                },
                              );
                            }).toList(),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Get Tips",
                              style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
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
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Cycle Phases and Period",
                                style:
                                TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "see more",
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xff5925DC)),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: Color(0xff5925DC),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Column(
                              children: [
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Hot topics",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "see more",
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xff5925DC)),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: Color(0xff5925DC),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CarouselSlider(
                            options: CarouselOptions(
                                aspectRatio: 2.0,
                                enlargeCenterPage: true,
                                enableInfiniteScroll: false,
                                initialPage: 1),
                            items: <String>[
                              "assets/images/Frame1.png",
                              "assets/images/Frame2.png"
                            ].map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                      child: Image(
                                        image: AssetImage("$i"),
                                      ));
                                },
                              );
                            }).toList(),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Get Tips",
                              style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
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
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Cycle Phases and Period",
                                style:
                                TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "see more",
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xff5925DC)),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: Color(0xff5925DC),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Column(
                              children: [
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Hot topics",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "see more",
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xff5925DC)),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: Color(0xff5925DC),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CarouselSlider(
                            options: CarouselOptions(
                                aspectRatio: 2.0,
                                enlargeCenterPage: true,
                                enableInfiniteScroll: false,
                                initialPage: 1),
                            items: <String>[
                              "assets/images/Frame1.png",
                              "assets/images/Frame2.png"
                            ].map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                      child: Image(
                                        image: AssetImage("$i"),
                                      ));
                                },
                              );
                            }).toList(),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Get Tips",
                              style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
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
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Cycle Phases and Period",
                                style:
                                TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "see more",
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xff5925DC)),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: Color(0xff5925DC),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Column(
                              children: [
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
                              ],
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
      ),
    );
  }
}
