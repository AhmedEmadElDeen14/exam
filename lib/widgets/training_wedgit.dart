import 'package:flutter/material.dart';

class TrainingWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffEAECF5),
        borderRadius: BorderRadius.circular(25)
      ),
      
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Text(
                      "7 days",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Morning Yoga",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Improve mental focus.",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time_outlined),
                      SizedBox(width: 8,),
                      Text("30 mins")
                    ],
                  ),
                ],
              )
            ],
          ),
          Image(image: AssetImage("assets/images/yogai.png"),)
        ],
      ),
    );
  }
}
