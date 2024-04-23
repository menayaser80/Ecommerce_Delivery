import 'package:delivery_app/core/constant/routes.dart';
import 'package:delivery_app/core/middleware/mymiddleware.dart';
import 'package:delivery_app/view/screens/Home_Screen.dart';
import 'package:delivery_app/view/screens/auth/forgetpassword/forgetpassword.dart';
import 'package:delivery_app/view/screens/auth/forgetpassword/resetpassword.dart';
import 'package:delivery_app/view/screens/auth/forgetpassword/success_resetpassword.dart';
import 'package:delivery_app/view/screens/auth/forgetpassword/verifycode.dart';
import 'package:delivery_app/view/screens/auth/login.dart';
import 'package:delivery_app/view/screens/auth/signup.dart';
import 'package:delivery_app/view/screens/auth/success_signup.dart';
import 'package:delivery_app/view/screens/auth/verifycodesignup.dart';
import 'package:delivery_app/view/screens/language.dart';
import 'package:delivery_app/view/screens/orders/archive.dart';
import 'package:delivery_app/view/screens/orders/details.dart';
import 'package:delivery_app/view/screens/orders/pending.dart';
import 'package:get/get.dart';

import 'view/screens/orders/tracking.dart';
List<GetPage<dynamic>>? routes = [
  GetPage(  name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  // GetPage(name: "/", page: () => Cart()),
//  Auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  //
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  GetPage(name: AppRoute.orderspending, page: () => const OrdersPending()),
  GetPage(name: AppRoute.ordersarchive, page: () => const OrdersArchiveView()),
  GetPage(name: AppRoute.ordersdetails, page: () => const OrdersDetails()),
  GetPage(name: AppRoute.ordersTracking, page: () => const OrdersTracking()),



];
 