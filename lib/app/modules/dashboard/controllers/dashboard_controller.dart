import 'package:get/get.dart';
import 'package:sm4rty/app/modules/dashboard/views/schedule_view.dart';
import 'package:sm4rty/app/modules/dashboard/views/home_view.dart';

class DashboardController extends GetxController {
  var selectedPage = 0.obs;
  List pages = const [HomeView(), ScheduleView()];
  void changeSelected(int index) {
    selectedPage.value = index;
  }
}
