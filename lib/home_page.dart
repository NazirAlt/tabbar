import 'package:flutter/material.dart';
import 'package:tabbar/tabs/first_tab.dart';
import 'package:tabbar/tabs/second_tab.dart';
import 'package:tabbar/tabs/third_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text(
            'TAB BAR',
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: const Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                FirstTab(),
                SecondTab(),
                ThirdTab(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
