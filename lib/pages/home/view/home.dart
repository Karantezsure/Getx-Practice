import 'package:demo/pages/detail/binding/detail_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:demo/pages/detail/view/detail.dart';
import 'package:demo/pages/home/controller/home_controller.dart';
import 'package:demo/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${homeController.count}",
                style: TextStyle(fontSize: 24),
              ),
            ),
            FlatButton(
              onPressed: () {
                // Get.toNamed("/detail");
                // print(apiService.fetchTextFromApi());
                homeController.increment();
              },
              child: Text("Increment"),
              color: Colors.black,
              textColor: Colors.white,
            ),
            FlatButton(
              onPressed: () {
                Get.defaultDialog(title: "This is dialog");
                // Get.toNamed("/detail");
              },
              child: Text("Dialogue box"),
              color: Colors.red,
              textColor: Colors.white,
            ),
            FlatButton(
              onPressed: () {
                Get.toNamed("/detail");
              },
              child: Text("Go to detail using Get.toNamed"),
              color: Colors.red,
              textColor: Colors.white,
            ),
            FlatButton(
              onPressed: () {
                Get.to(DetailScreen());
              },
              child: Text("Go to detail using Get.to"),
              color: Colors.red,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
