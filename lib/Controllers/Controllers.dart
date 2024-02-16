import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:ghub_app/Models/optionsModel.dart';
import 'package:provider/provider.dart';


class OptionController extends GetxController {

 
  final _options = <Option>[Option('Google'),Option('Microsoft'),].obs;

  List<Option> get options => _options;
}