import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ghub_app/Controllers/Controllers.dart';
import 'package:ghub_app/Screens/home_page.dart';
import 'package:ghub_app/Widges/OptionWidget.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final OptionController _optionController = Get.put(OptionController());
    double cardHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 123,
          titleSpacing: 0,
          title: const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
              radius: 25,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Text(
                    'Ahmed Mohsen',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'profile',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  size: 25,
                  Icons.search,
                  color: Color.fromARGB(255, 77, 76, 125),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.notifications_none,
                  color: Color.fromARGB(255, 77, 76, 125),
                ),
              ),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Home',
              ),
              Tab(
                text: 'Categories',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomePage(),
            Container(
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
