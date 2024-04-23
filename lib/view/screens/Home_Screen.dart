
import 'dart:io';

import 'package:delivery_app/controller/HomeScreenController.dart';
import 'package:delivery_app/core/constant/color.dart';
import 'package:delivery_app/core/constant/routes.dart';
import 'package:delivery_app/view/widgets/Home/custombottomappbarhome.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
          appBar: AppBar(
            title: Text("Delivery App"),
          ),
          bottomNavigationBar: const CustomBottomAppBarHome(),
          body:WillPopScope(
            child:controller.listPage.elementAt(controller.currentpage),
            onWillPop: (){
              Get.defaultDialog(
                title: "Warning",
                titleStyle: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                middleText: "Do you want to Exit app",
                  onCancel: ()
                  {

                  },
                onConfirm: (){
                  exit(0);
                }
              );
return Future.value(false);
            },
          ),
        ));
  }
}