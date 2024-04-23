
import 'package:delivery_app/core/class/crud.dart';
import 'package:delivery_app/linkApi.dart';

class SignupData {
  Crud crud;
  SignupData(this.crud);
  postdata(String username ,String password ,String email ,String phone ) async {
    var response = await crud.postData(AppLink.signUp, {
      "username" : username ,
      "password" : password  ,
      "email" : email ,
      "phone" : phone  ,
    });
    return response.fold((l) => l, (r) => r);
  }
}