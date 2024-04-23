
import 'package:delivery_app/controller/HomeScreenController.dart';
import 'package:delivery_app/view/widgets/Home/custombuttonappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            child: Row(
              children: [
                ...List.generate(controller.listPage.length , ((index) {
                  return Expanded(
                        child: CustomButtonAppBar(
                        textbutton: controller.bottomappbar[index]['title'],
                        icondata: controller.bottomappbar[index]['icon'],
                        onPressed: () {
                          controller.changePage(index);
                        },
                        active: controller.currentpage == index ? true : false),
                      );
                }))
              ],
            )));
  }
}