

import 'package:delivery_app/core/class/crud.dart';
import 'package:delivery_app/linkApi.dart';

class OrdersPendingData {
  Crud crud;
  OrdersPendingData(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.viewpendingorders, {});
    return response.fold((l) => l, (r) => r);
  }
  approveOrder(String deliveryid, String userid, String orderid) async {
    var response = await crud.postData(AppLink.ordersapprove, {
      "deliveryid": deliveryid,
      "usersid": userid,
      "ordersid": orderid,
    });
    return response.fold((l) => l, (r) => r);
  }
}
