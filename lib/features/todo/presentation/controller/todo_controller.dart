import 'package:get/get.dart';

class TodoController extends GetxController {
  final count = 0.obs;

  void increment() => count.value++;
}
