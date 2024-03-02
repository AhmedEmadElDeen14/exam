import 'package:exam/widgets/training_wedgit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/widgets.dart';

class WorkoutApp extends StatefulWidget {
  static const String routeName = "WorkoutApp";

  @override
  State<WorkoutApp> createState() => _WorkoutAppState();
}

class _WorkoutAppState extends State<WorkoutApp>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int tabIndex = 0;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this,initialIndex: tabIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int index = 0;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: Container(
          alignment: Alignment.topRight,
          child: Image(
            image: AssetImage("assets/images/personal.png"),
          ),
        ),
        title: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Hello, Jade",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Ready to workout?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
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
                Icons.send,
                color: Color(
                  0xff667085,
                ),
              )),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.analytics_outlined,
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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 35, vertical: 25),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xffF8F9FC),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Image(
                              image: AssetImage("assets/images/Iconheart.png")),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "Heart Rate",
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "81",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "BPM",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Divider(
                  //   thickness: 5,
                  //   endIndent: 3,
                  //   indent: 3,
                  //   color: Colors.black,
                  // ),
                  Container(
                    width: 1,
                    height: 50,
                    color: Color(0xffD9D9D9),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.list,
                            color: Color(0xff717BBC),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "To-Do",
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "35.5",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "%",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 1,
                    height: 50,
                    color: Color(0xffD9D9D9),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image(image: AssetImage("assets/images/calo.png")),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "Calo",
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "1000",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Cal",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "Workout Programs",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            TabBar.secondary(
              onTap: (value) {
                tabIndex =value;
                setState(() {});
            },
              tabs: const [
                Tab(
                  text: "All Type",
                ),
                Tab(
                  text: "Full Body",
                ),
                Tab(
                  text: "Upper",
                ),
                Tab(
                  text: "Lower",
                ),
              ],
              controller: tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children:  [
                  ListView(
                    children: [
                      TrainingWidget(),
                      TrainingWidget(),
                      TrainingWidget(),
                      TrainingWidget(),
                    ],
                  ),
                  ListView(
                    children: [
                      TrainingWidget(),
                      TrainingWidget(),
                      TrainingWidget(),
                      TrainingWidget(),
                    ],
                  ),
                  ListView(
                    children: [
                      TrainingWidget(),
                      TrainingWidget(),
                      TrainingWidget(),
                      TrainingWidget(),
                    ],
                  ),
                  ListView(
                    children: [
                      TrainingWidget(),
                      TrainingWidget(),
                      TrainingWidget(),
                      TrainingWidget(),
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
