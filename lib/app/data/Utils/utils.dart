import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

SizedBox spaceV(double height) {
  return SizedBox(
    height: height,
  );
}

SizedBox spaceH(double width) {
  return SizedBox(
    width: width,
  );
}

TextStyle poppinsBold(double size, Color color) {
  return GoogleFonts.poppins(
      fontSize: size, color: color, fontWeight: FontWeight.bold);
}

TextStyle poppinsReg(double size, Color color) {
  return GoogleFonts.poppins(fontSize: size, color: color);
}

TextStyle poppinsSemiBold(double size, Color color) {
  return GoogleFonts.poppins(
      fontSize: size, color: color, fontWeight: FontWeight.w600);
}

TextStyle poppinsMedium(double size, Color color) {
  return GoogleFonts.poppins(
      fontSize: size, color: color, fontWeight: FontWeight.w500);
}

TextStyle poppinsSemiBoldS(double size, Color color, Color sColor,
    [Offset s = const Offset(1, 2), double r = 20.0]) {
  return GoogleFonts.poppins(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w600,
      shadows: [
        Shadow(
          offset: s,
          blurRadius: r,
          color: sColor,
        ),
      ]);
}

Expanded spaceVFull() {
  return const Expanded(child: SizedBox());
}

Color lightBlack = const Color(0xff2D3436);
Color lightGreen = const Color(0xff3FC1C9);
Color turquoise = const Color(0xff81E1E6);
Color grey = const Color(0xffD2E0EE);
Color lgrey = const Color(0xff9A9B9E);
Color sgrey = const Color(0xffF7F7F9);
Color purple = const Color(0xff372E62);
Color blue = const Color(0xff0984e3);
Color red = const Color(0xffee5253);
Color green = const Color(0xff1dd1a1);
Shadow iconShadow() {
  return Shadow(
      offset: const Offset(1, 1),
      blurRadius: 4,
      color: lightBlack.withOpacity(.2));
}

Widget roomsCard(String title, Color tColor) {
  return GestureDetector(
    onTap: () {},
    child: Material(
      borderRadius: BorderRadius.circular(50),
      elevation: 5,
      shadowColor: lightBlack.withOpacity(.5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(59),
          color: Colors.white,
        ),
        child: Text(
          title,
          style: poppinsMedium(14, tColor),
        ),
      ),
    ),
  );
}

Container tempAndHumidCard() {
  return Container(
    width: Get.width * .8,
    height: Get.height * .18,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: lightBlack.withOpacity(.2),
              offset: const Offset(2, 5),
              blurRadius: 4,
              spreadRadius: 2)
        ]),
    child: Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: turquoise,
              radius: 25,
              child: SvgPicture.asset(
                'lib/app/data/images/thermometer-svgrepo-com.svg',
                width: 30,
                color: lightBlack,
              ),
            ),
            spaceH(20),
            Text(
              'Temperature\nand Humidity',
              style: poppinsBold(16, lightBlack),
            )
          ],
        ),
        spaceVFull(),
        Row(
          children: [
            SvgPicture.asset(
              'lib/app/data/images/thermometer-svgrepo-com.svg',
              width: 30,
              color: lightBlack,
            ),
            spaceH(10),
            Text(
              '29°C',
              style: poppinsBold(16, lightBlack),
            ),
            spaceH(30),
            SvgPicture.asset(
              'lib/app/data/images/water-drop-svgrepo-com.svg',
              width: 30,
              color: lightBlack,
            ),
            spaceH(10),
            Text(
              '79%',
              style: poppinsBold(16, lightBlack),
            ),
            spaceVFull(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: sgrey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                'Kitchen',
                style: poppinsSemiBold(14, lgrey),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Container lampCard() {
  return Container(
    width: Get.width * .8,
    height: Get.height * .18,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: lightBlack.withOpacity(.2),
              offset: const Offset(2, 5),
              blurRadius: 4,
              spreadRadius: 2)
        ]),
    child: Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: turquoise,
              radius: 25,
              child: SvgPicture.asset(
                'lib/app/data/images/bulb-outline-svgrepo-com.svg',
                width: 30,
                color: lightBlack,
              ),
            ),
            spaceH(20),
            Text(
              'Lamp 1',
              style: poppinsBold(18, lightBlack),
            ),
            spaceVFull(),
            CupertinoSwitch(
              value: true,
              onChanged: (a) {},
              activeColor: lightGreen,
            )
          ],
        ),
        spaceVFull(),
        Row(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: green,
            ),
            spaceH(10),
            Text(
              'On',
              style: poppinsReg(12, lightBlack),
            ),
            spaceVFull(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: sgrey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                'Kitchen',
                style: poppinsSemiBold(14, lgrey),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Container lampCardM() {
  return Container(
    width: Get.width * .8,
    height: Get.height * .18,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: lightBlack.withOpacity(.2),
              offset: const Offset(2, 5),
              blurRadius: 4,
              spreadRadius: 2)
        ]),
    child: Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: turquoise,
              radius: 25,
              child: SvgPicture.asset(
                'lib/app/data/images/bulb-outline-svgrepo-com.svg',
                width: 30,
                color: lightBlack,
              ),
            ),
            spaceH(20),
            Text(
              'Lamp 1',
              style: poppinsBold(18, lightBlack),
            ),
            spaceVFull(),
            CircleAvatar(
              radius: 10,
              backgroundColor: green,
            ),
            spaceH(10),
          ],
        ),
        spaceVFull(),
        Row(
          children: [
            Text(
              '07.00 am - 09.00 pm',
              style: poppinsReg(12, lgrey),
            ),
            spaceVFull(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: sgrey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                'Kitchen',
                style: poppinsSemiBold(14, lgrey),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Container waterLevel() {
  return Container(
    width: Get.width * .8,
    height: Get.height * .18,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: lightBlack.withOpacity(.2),
              offset: const Offset(2, 5),
              blurRadius: 4,
              spreadRadius: 2)
        ]),
    child: Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: turquoise,
              radius: 25,
              child: SvgPicture.asset(
                'lib/app/data/images/water-level-svgrepo-com.svg',
                width: 30,
                color: lightBlack,
              ),
            ),
            spaceH(20),
            Text(
              'Water Level',
              style: poppinsBold(18, lightBlack),
            ),
            spaceVFull(),
            SizedBox(
                width: (Get.width * .8) * .1,
                height: (Get.height * .18) * .35,
                child: LiquidLinearProgressIndicator(
                  value: 0.5, // Defaults to 0.5.
                  valueColor: AlwaysStoppedAnimation(blue),
                  backgroundColor: Colors.white,
                  borderColor: lightGreen,
                  borderWidth: 5.0,
                  borderRadius: 12.0,
                  direction: Axis.vertical,
                )),
            spaceH(20)
          ],
        ),
        spaceVFull(),
        Row(
          children: [
            SvgPicture.asset(
              'lib/app/data/images/wave-svgrepo-com.svg',
              width: 30,
              color: lightBlack,
            ),
            spaceH(10),
            Text(
              '10/20 L',
              style: poppinsBold(16, lightBlack),
            ),
            spaceVFull(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: sgrey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                'Kitchen',
                style: poppinsSemiBold(14, lgrey),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
