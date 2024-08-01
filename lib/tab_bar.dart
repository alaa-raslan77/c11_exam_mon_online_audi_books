import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class TabBarr extends StatelessWidget {
  const TabBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DefaultTabController(
        length: 4,
        child: Column(
          children: <Widget>[
            ButtonsTabBar(
              // Customize the appearance and behavior of the tab bar
              backgroundColor: Colors.red,
              borderWidth: 2,
              borderColor: Colors.black,
              labelStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              // Add your tabs here
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
                Tab(text: 'Tab 3'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
