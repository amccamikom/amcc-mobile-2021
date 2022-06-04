import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../model/makanan.dart';

class HomeController extends GetxController {
  RxList<Makanan> daftarMakanan = <Makanan>[].obs;
  String namaUser = 'Cici Meisha';
  String imageUrl = 'assets/luthfi.png';

  void getDataMakanan() async {
    var data = await rootBundle.loadString('assets/json/data.json');

    var finalData = json.decode(data);

    print(daftarMakanan);

    finalData.forEach((item) {
      var tempData = Makanan(
        nama: item["nama"],
        deskripsi: item["deskripsi"],
        harga: item["harga"],
        rating: item["rating"],
        imagePath: item["imagePath"],
      );

      daftarMakanan.add(tempData);
    });

    finalData
        .map(
          (item) => Makanan(
            nama: item["nama"],
            deskripsi: item["deskripsi"],
            harga: item["harga"],
          ),
        )
        .toList();
  }

  void addFood() {
    var makanan = Makanan(
      nama: 'Bawang Putih',
      deskripsi: 'Bawang putih dari alam',
      harga: '3k',
      rating: 4.5,
      imagePath: 'assets/bawang.png',
    );

    daftarMakanan.add(makanan);
  }

  @override
  void onInit() {
    getDataMakanan();
    super.onInit();
  }
}
