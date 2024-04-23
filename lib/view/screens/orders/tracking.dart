
import 'package:delivery_app/controller/orders/details_controller.dart';
import 'package:delivery_app/controller/tracking_controller.dart';
import 'package:delivery_app/core/class/handling_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrdersTracking extends StatelessWidget {
  const OrdersTracking({super.key});

  @override
  Widget build(BuildContext context) {
    Trackingcontroller controller2 = Get.put(Trackingcontroller());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders Tracking'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GetBuilder<Trackingcontroller>(
            builder: ((controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: Column(children: [

                  Expanded(
                    child: Container(
                      padding:
                      EdgeInsets.symmetric( vertical: 10),
                      width: double.infinity,
                      child: GoogleMap(
                        mapType: MapType.normal,
                        markers: controller.markers.toSet(),
                        initialCameraPosition: controller.cameraPosition!,
                        onMapCreated: (GoogleMapController controllermap) {
                     controller2.gmc=controllermap;
                        },
                      ),
                    ),
                  )
                ])))),
      ),
    );
  }
}