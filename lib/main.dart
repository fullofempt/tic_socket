import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_socket/app/routes/app_pages.dart';
import 'package:tic_socket/services/socket_service.dart';

void main() {
  initServices();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.HOME,
    getPages: AppPages.routes,
  ));
}

Future<void> initServices() async {
  await Get.putAsync(() async => SocketService().init());
}
