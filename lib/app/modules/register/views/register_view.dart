import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../controllers/register_controller.dart';
import '../../../data/Utils/utils.dart';
import 'package:auto_size_text/auto_size_text.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          SizedBox(
              width: Get.width,
              height: Get.height * .25,
              child: SvgPicture.asset(
                'lib/app/data/images/Group 3 (1).svg',
                fit: BoxFit.fill,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              spaceV(Get.height * .1),
              Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'Sm4rty',
                    style: poppinsSemiBold(40, Colors.white),
                  ),
                  AutoSizeText(
                    'APP',
                    style: poppinsReg(40, Colors.white),
                  ),
                ],
              )),
              spaceV(Get.height * .1),
              SizedBox(
                width: Get.width * .8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Name',
                      style: poppinsSemiBoldS(14, lightBlack, lightBlack),
                    ),
                    spaceV(10),
                    Material(
                      borderRadius: BorderRadius.circular(12),
                      elevation: 6,
                      child: TextField(
                        // controller: controller.emailC,
                        keyboardType: TextInputType.emailAddress,
                        style: poppinsSemiBold(14, lightBlack),
                        decoration: InputDecoration(
                          hintText: 'Enter Your FullName',
                          hintStyle:
                              poppinsSemiBold(14, lightBlack.withOpacity(.5)),
                          filled: true,
                          fillColor: lightGreen.withOpacity(.5),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              spaceV(Get.height * .02),
              SizedBox(
                width: Get.width * .8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Email',
                      style: poppinsSemiBoldS(14, lightBlack, lightBlack),
                    ),
                    spaceV(10),
                    Material(
                      borderRadius: BorderRadius.circular(12),
                      elevation: 6,
                      child: TextField(
                        // controller: controller.emailC,
                        keyboardType: TextInputType.emailAddress,
                        style: poppinsSemiBold(14, lightBlack),
                        decoration: InputDecoration(
                          hintText: 'Enter Your Email',
                          hintStyle:
                              poppinsSemiBold(14, lightBlack.withOpacity(.5)),
                          filled: true,
                          fillColor: lightGreen.withOpacity(.5),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              spaceV(Get.height * .02),
              SizedBox(
                width: Get.width * .8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Password',
                      style: poppinsSemiBoldS(14, lightBlack, lightBlack),
                    ),
                    spaceV(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: Get.width * .68,
                          child: Material(
                            borderRadius: BorderRadius.circular(12),
                            elevation: 6,
                            child: TextField(
                              // controller: controller.passC,
                              style: poppinsSemiBold(14, lightBlack),
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Enter Your Password',
                                hintStyle: poppinsSemiBold(
                                    14, lightBlack.withOpacity(.5)),
                                filled: true,
                                fillColor: lightGreen.withOpacity(.5),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.visibility,
                                  color: lightBlack,
                                )),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              spaceV(Get.height * .05),
              Container(
                  width: Get.width * .8,
                  height: Get.height * .08,
                  decoration: BoxDecoration(
                      color: lightGreen,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: lightGreen,
                            offset: const Offset(0, 5),
                            blurRadius: 10)
                      ]),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: poppinsSemiBold(20, Colors.white),
                    ),
                  )),
              spaceVFull(),
              SizedBox(
                width: Get.width,
                child: SvgPicture.asset(
                  'lib/app/data/images/Group 6.svg',
                  fit: BoxFit.cover,
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
