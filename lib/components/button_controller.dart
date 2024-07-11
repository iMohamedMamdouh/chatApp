import 'package:get/get.dart';

class BottomBarController extends GetxController {
  final _selectedindex = 0.obs;
  getIndex() => _selectedindex.value;
  setIndex(val) => _selectedindex.value = val;
}
