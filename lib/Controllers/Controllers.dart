import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:ghub_app/Models/FriendsModel.dart';
import 'package:ghub_app/Models/optionsModel.dart';
import 'package:provider/provider.dart';

class OptionController extends GetxController {
  final _options = <Option>[
    Option('Google'),
    Option('Microsoft'),
  ].obs;

  List<Option> get options => _options;
}

class FriendController extends GetxController {
  final _friend = <Friend>[
    Friend('Ahmed', 3, true),
    Friend('Saleh', 2, true),
    Friend('Mohammed', 8, false),
    Friend('Khaled', 3, true),
    Friend('Ahmed',4, false),
    Friend('Fawaz', 1, true),
    Friend('Omar', 3, false)
  ].obs;

  List<Friend> get options => _friend;
}
