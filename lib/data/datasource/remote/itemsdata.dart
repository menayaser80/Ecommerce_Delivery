
import 'package:delivery_app/core/class/crud.dart';
import 'package:delivery_app/linkApi.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getData(String id,String userid) async {
    var response = await crud.postData(AppLink.items, {"id" : id.toString(),
    "users_id":userid});
    return response.fold((l) => l, (r) => r);
  }
}