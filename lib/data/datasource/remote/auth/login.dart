
import 'package:delivery_app/core/class/crud.dart';
import 'package:delivery_app/linkApi.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  postdata( String password ,String email ) async {
    var response = await crud.postData(AppLink.login, {
      "email" : email ,
      "password" : password  ,

    });
    return response.fold((l) => l, (r) => r);
  }
}