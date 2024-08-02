import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class TabBarr extends StatelessWidget {
  const TabBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:[
          SizedBox(width: 7,)
          , DefaultTabController(
            length: 4,
            child: Column(
              children: [
                ButtonsTabBar(
                    contentPadding: EdgeInsets.only
                      (top: 8,bottom: 8,right: 22,left: 22),
                    buttonMargin: EdgeInsets.only(left: 15,right: 15),
                    radius: 12,
                    unselectedBackgroundColor: Color(0xFFF5F5FA),
                    backgroundColor: Color(0xFFF5F5FA),
                    borderWidth: 0,
                    borderColor: Color(0xFFF5F5FA),
                    labelStyle: TextStyle(
                        color: Color(0xff2E2E5D),
                        fontWeight: FontWeight.w400,
                        fontSize: 17
                    ),
                    unselectedLabelStyle: TextStyle(
                        color: Color(0xff2E2E5D),
                        fontWeight: FontWeight.w400,
                        fontSize: 17
                    ),
                    // Add your tabs here
                    tabs:[
                      Tab(text: "Art"),
                      Tab(text: "Business"),
                      Tab(text: "Comedy"),
                      Tab(text: "Drama"),
                    ]
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
