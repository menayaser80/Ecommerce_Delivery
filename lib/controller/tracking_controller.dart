import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/core/class/statusrequest.dart';
import 'package:delivery_app/core/services/services.dart';
import 'package:delivery_app/data/model/ordersmodel.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Trackingcontroller extends GetxController {
  StreamSubscription<Position>? positionStream;
  GoogleMapController? gmc;
  MyServices myservices=Get.find();
  List<Marker> markers = [];
  StatusRequest statusRequest = StatusRequest.success;
  late OrdersModel ordersModel;
  CameraPosition? cameraPosition;
  double? destlat;
  double? destlong;
  double? currentlat;
  double? currentlong;
Timer?timer;
  getcurrentlocation() {
    cameraPosition = CameraPosition(
      target: LatLng(double.parse(ordersModel.addressLat.toString()!),
          double.parse(ordersModel.addressLong.toString()!)),
      zoom: 12.4746,
    );

    markers.add(Marker(
        markerId: MarkerId("destination"),
        position: LatLng(double.parse(ordersModel.addressLat.toString()!),
            double.parse(ordersModel.addressLong.toString()!))));
    positionStream =
        Geolocator.getPositionStream().listen((Position? position) {
      currentlat = position!.longitude;
      currentlong = position!.longitude;
      print("===========================currentposition=============");
      if (gmc != null) {
        gmc!.animateCamera(
            CameraUpdate.newLatLng(LatLng(currentlat!, currentlong!)));
      }
      markers.removeWhere((element) => element.markerId.value == "current");
      markers.add(Marker(
          markerId: MarkerId("current"),
          position: LatLng(position!.latitude, position.longitude)));
      update();
    });
  }

  refreshLocation() async{
    await Future.delayed(Duration(seconds: 2));
    timer=Timer.periodic(Duration(seconds: 10), (timer) {
      FirebaseFirestore.instance.collection("delivery").doc(ordersModel.ordersId.toString()).set(
          {
            "lat":currentlat,
            "long":currentlong,
            "deliveryid":myservices.sharedPreferences.getString("id"),
          });
    });

  }

  @override
  void onInit() {
    ordersModel = Get.arguments['ordersmodel'];
    getcurrentlocation();
    // refreshLocation();
    super.onInit();
  }
  @override
  void onClose() {
positionStream!.cancel();
gmc!.dispose();
timer!.cancel();
super.onClose();
  }
}
