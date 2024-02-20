import 'package:flutter/material.dart';
import 'package:get/get.dart'; //This line imports the Get package, which is used for state management,
// dependency injection, and navigation within the Flutter application.
import 'package:ghub_app/Screens/FriendsPage.dart';
import 'package:ghub_app/Screens/home_tab_bar.dart';
import 'package:ghub_app/Screens/MyProjectPage.dart';
import 'package:ghub_app/Screens/SettingsPage.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    //This line creates an instance of NavigationController and registers it
    // with the Get dependency injection system using Get.put().
    //This allows the NavigationController instance to be accessed globally within the application.
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        // The Obx widget is used to listen to changes in observable variables from the controller.
        // When the selected index changes, the corresponding screen is displayed.
        () => NavigationBar(
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(
                  icon: Icon(Icons.file_copy_rounded), label: "My projects"),
              NavigationDestination(icon: Icon(Icons.people), label: "Friends"),
              NavigationDestination(
                  icon: Icon(Icons.settings), label: "Settings"),
            ]),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

//This defines a class called NavigationController, which extends GetxController.
// It manages the state of the bottom navigation bar.
//It contains an observable integer selectedIndex which represents the index of the currently selected navigation item.
//It also contains a list of screen widgets (screens) corresponding to each navigation item.
class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = const [
    HomeTabBar(),
    MyProjectsPage(),
    FriendsPage(),
    SettingPage()
  ];
}
