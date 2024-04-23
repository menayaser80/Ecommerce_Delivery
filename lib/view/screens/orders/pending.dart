
import 'package:delivery_app/controller/orders/pending_controller.dart';
import 'package:delivery_app/core/class/handling_data.dart';
import 'package:delivery_app/view/widgets/orders/orderslistcard.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersPending extends StatelessWidget {
  const OrdersPending({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(OrdersPendingController());
    return  Container(
          padding:const  EdgeInsets.all(10),
          child: GetBuilder<OrdersPendingController>(
              builder: ((controller) => HandlingDataView(statusRequest: controller.statusRequest, widget: ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: ((context, index) =>
                    CardOrdersList(listdata: controller.data[index])),
              )))),
    );
  }
}