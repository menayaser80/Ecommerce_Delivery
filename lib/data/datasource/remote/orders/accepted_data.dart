

import 'package:delivery_app/core/class/crud.dart';
import 'package:delivery_app/linkApi.dart';

class OrdersAcceptedData {
  Crud crud;
  OrdersAcceptedData(this.crud);
  getData(String deliveryid) async {
    var response = await crud.postData(AppLink.viewAcceptedorders, {"id": deliveryid});
    return response.fold((l) => l, (r) => r);
  }
  donedelivery(String ordersid,String userid) async {
    var response = await crud.postData(AppLink.ordersdone, {"ordersid": ordersid,"usersid":userid});
    return response.fold((l) => l, (r) => r);
  }
}