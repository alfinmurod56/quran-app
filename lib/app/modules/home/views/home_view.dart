import 'package:alquran/app/data/models/surah.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Surah>>(
          future: controller.getAllSurah(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasData) {
              return Center(
                child: Text("Tidak ada Data"),
              );
            }
            print(snapshot.data);
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  child: Text("${index + 1}"),
                ),
                title: Text("Surah Al-...."),
                subtitle: Text("7 Ayat | makiyah"),
                trailing: Text("tulisan arab"),
              ),
            );
          }),
    );
  }
}
