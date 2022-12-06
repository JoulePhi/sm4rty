import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sm4rty/app/data/Utils/utils.dart';
import 'package:iconly/iconly.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Obx(() => controller.pages[controller.selectedPage.value]),
        floatingActionButton: SizedBox(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: turquoise,
            child: const Icon(
              IconlyBold.plus,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: bottomBar(controller));
  }
}

Widget bottomBar(controller) {
  return Theme(
      data: ThemeData(canvasColor: lightGreen),
      child: Obx(
        () => SizedBox(
          height: Get.height * .08,
          child: BottomAppBar(
              color: lightGreen,
              shape: const CircularNotchedRectangle(), //shape of notch
              notchMargin: 5,
              elevation: 5,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.changeSelected(0);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          IconlyBold.home,
                          color: (controller.selectedPage.value == 0)
                              ? purple
                              : grey,
                        ),
                        Text(
                          'Home',
                          style: poppinsSemiBold(
                            10,
                            (controller.selectedPage.value == 0)
                                ? purple
                                : grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.changeSelected(1);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          IconlyBold.time_square,
                          color: (controller.selectedPage.value == 1)
                              ? purple
                              : grey,
                        ),
                        Text(
                          'Schedule',
                          style: poppinsSemiBold(
                            10,
                            (controller.selectedPage.value == 1)
                                ? purple
                                : grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  spaceH(10),
                  GestureDetector(
                    onTap: () {
                      controller.changeSelected(2);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          IconlyBold.document,
                          color: (controller.selectedPage.value == 2)
                              ? purple
                              : grey,
                        ),
                        Text(
                          'Data',
                          style: poppinsSemiBold(
                            10,
                            (controller.selectedPage.value == 2)
                                ? purple
                                : grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.changeSelected(3);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          IconlyBold.setting,
                          color: (controller.selectedPage.value == 3)
                              ? purple
                              : grey,
                        ),
                        Text(
                          'Settings',
                          style: poppinsSemiBold(
                            10,
                            (controller.selectedPage.value == 3)
                                ? purple
                                : grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ));
}
