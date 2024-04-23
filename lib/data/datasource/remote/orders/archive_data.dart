
import 'package:delivery_app/core/class/crud.dart';
import 'package:delivery_app/linkApi.dart';

class OrdersArchiveData {
  Crud crud;
  OrdersArchiveData(this.crud);
  getData(String deliveryid) async {
    var response = await crud.postData(AppLink.ordersarchive, {"id": deliveryid});
    return response.fold((l) => l, (r) => r);
  }
}