
import 'package:delivery_app/core/class/statusrequest.dart';
import 'package:delivery_app/core/constant/routes.dart';
import 'package:delivery_app/core/functions/handingdatacontroller.dart';
import 'package:delivery_app/core/services/services.dart';
import 'package:delivery_app/data/datasource/remote/homedata.dart';
import 'package:delivery_app/data/model/items%20model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class HomeController extends SearchMixController {

}

class HomeControllerImp extends HomeController {

}
class SearchMixController extends GetxController {
  // List<ItemsModel> listdata = [];
  //
  // late StatusRequest statusRequest;
  // HomeData homedata = HomeData(Get.find());
  //
  // searchData() async {
  //   statusRequest = StatusRequest.loading;
  //   var response = await homedata.searchData(search!.text);
  //   print("=============================== Controller $response ");
  //   statusRequest = handlingData(response);
  //   if (StatusRequest.success == statusRequest) {
  //     if (response['status'] == "success") {
  //       listdata.clear();
  //       List responsedata = response['data'];
  //       listdata.addAll(responsedata.map((e) => ItemsModel.fromJson(e)));
  //     } else {
  //       statusRequest = StatusRequest.failure;
  //     }
  //   }
  //   update();
  // }
  //
  // bool isSearch = false;
  // TextEditingController? search;
  // checkSearch(val) {
  //   if (val == "") {
  //     statusRequest = StatusRequest.none;
  //     isSearch = false;
  //   }
  //   update();
  // }
  //
  // onSearchItems() {
  //   isSearch = true;
  //   searchData();
  //   update();
  // }
}