import 'package:alquran/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:get/get.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Al-Qur'an Apps",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "Sesibuk itukah kamu sampai lupa membaca Al-Qur'an",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
                width: 300,
                height: 300,
                child: Lottie.asset("assets/lotties/alquran.json")),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text("GET STARTED"),
            ),
          ],
        ),
      ),
    );
  }
}
