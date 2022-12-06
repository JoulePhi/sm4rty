import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:sm4rty/app/data/Utils/utils.dart';

class HomeView extends GetView {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: Get.width,
            height: Get.height * .12,
            child: SvgPicture.asset(
              'lib/app/data/images/Group 3 (2).svg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: Get.height * .1,
            width: Get.width * .85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Home,\nJane Doe',
                  style: poppinsSemiBold(24, lightBlack),
                ),
                const CircleAvatar(
                  radius: 40,
                ),
              ],
            ),
          ),
          Container(
            height: Get.height * .18,
            width: Get.width * .85,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: RadialGradient(
                  radius: 1.4,
                  colors: [
                    turquoise,
                    lightGreen,
                  ],
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Energy Usage',
                  style: poppinsSemiBoldS(
                      20, Colors.white, lightBlack.withOpacity(.4)),
                ),
                const Divider(
                  color: Colors.white,
                ),
                Expanded(
                  child: SizedBox(
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            // color: Colors.red,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Today',
                                  style: poppinsSemiBoldS(
                                      14,
                                      Colors.white,
                                      lightBlack.withOpacity(.2),
                                      const Offset(1, 1),
                                      4),
                                ),
                                spaceV(5),
                                Row(
                                  children: [
                                    Icon(
                                      IconlyBold.arrow_up_3,
                                      color: Colors.white,
                                      size: 26,
                                      shadows: [iconShadow()],
                                    ),
                                    Text(
                                      '30.7 kWh',
                                      style: poppinsSemiBoldS(
                                          22,
                                          Colors.white,
                                          lightBlack.withOpacity(.2),
                                          const Offset(1, 1),
                                          4),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            // color: Colors.red,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'This Month',
                                  style: poppinsSemiBoldS(
                                      14,
                                      Colors.white,
                                      lightBlack.withOpacity(.2),
                                      const Offset(1, 1),
                                      4),
                                ),
                                spaceV(5),
                                Row(
                                  children: [
                                    Icon(
                                      IconlyBold.arrow_up_3,
                                      color: Colors.white,
                                      size: 26,
                                      shadows: [iconShadow()],
                                    ),
                                    Text(
                                      '235.37 kWh',
                                      style: poppinsSemiBoldS(
                                          22,
                                          Colors.white,
                                          lightBlack.withOpacity(.2),
                                          const Offset(1, 1),
                                          4),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          spaceV(10),
          Container(
            width: Get.width,
            height: Get.height * .1,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  spaceH(20),
                  roomsCard('Living Room', lgrey),
                  spaceH(20),
                  roomsCard('Kitchen', purple),
                  spaceH(20),
                  roomsCard('Bedroom', lgrey),
                  spaceH(20),
                  roomsCard('Children\'s Room', lgrey),
                  spaceH(20),
                  roomsCard('Office', lgrey),
                  spaceH(20),
                ],
              ),
            ),
          ),
          Expanded(
              child: SizedBox(
            width: Get.width,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  spaceV(40),
                  tempAndHumidCard(),
                  spaceV(40),
                  lampCard(),
                  spaceV(40),
                  waterLevel(),
                  spaceV(40),
                  tempAndHumidCard(),
                  spaceV(40),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
