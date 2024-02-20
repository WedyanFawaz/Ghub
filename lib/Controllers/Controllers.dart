import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:ghub_app/Models/FriendsModel.dart';
import 'package:ghub_app/Models/optionsModel.dart';
import 'package:provider/provider.dart';

class OptionController extends GetxController {
  var activeIndex = 0.obs;
  final List<Option> _options = [
    Option('Solution Challenge 2024'),
    Option('Solution Challenge 2025'),
    Option('Solution Challenge 2026'),
    Option('Solution Challenge 2024'),
    Option('Solution Challenge 2024')
  ].obs;

  List<Option> get options => _options;

  void setActiveIndex(int index) {
    activeIndex.value = index;
  }
}

class FriendController extends GetxController {
  final _friend = <Friend>[
    Friend('Ahmed', 3, true),
    Friend('Saleh', 2, true),
    Friend('Mohammed', 8, false),
    Friend('Khaled', 3, true),
    Friend('Ahmed', 4, false),
    Friend('Fawaz', 1, true),
    Friend('Omar', 3, false)
  ].obs;

  List<Friend> get options => _friend;
}
