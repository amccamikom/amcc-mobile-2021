import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makan_yok_app/app_routes.dart';
import 'package:makan_yok_app/constant.dart';
import 'package:makan_yok_app/model/makanan.dart';

import 'controller/home_controller.dart';

class HomepageView extends StatelessWidget {
  const HomepageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Scaffold(
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          height: 75,
          decoration: BoxDecoration(
              color: coklat, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes.Home);
                    // homeController.getDataMakanan();
                  },
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home, color: Colors.white),
                      Text(
                        'Beranda',
                        style: GoogleFonts.poppins(color: Colors.white),
                      )
                    ],
                  ))),
              TextButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(Routes.Profil),
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person, color: Colors.white),
                      Text(
                        'Profil',
                        style: GoogleFonts.poppins(color: Colors.white),
                      )
                    ],
                  ))),
              TextButton(
                  onPressed: () => homeController.addFood(),
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add, color: Colors.white),
                      Text(
                        'Add Food',
                        style: GoogleFonts.poppins(color: Colors.white),
                      )
                    ],
                  ))),
            ],
          )),
      body: Container(
        color: canvas,
        child: ListView(shrinkWrap: true, children: [
          Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hai, ${homeController.namaUser}',
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Mau makan apa \nhari ini?',
                            style: GoogleFonts.poppins(
                                fontSize: 22, fontWeight: FontWeight.w700)),
                      ]),
                ),

                // foto-profil
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.Profil);
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage(homeController.imageUrl),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 30),

          // form-search
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            height: 59,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintText: 'Cari Makan',
                hintStyle: GoogleFonts.poppins(),
              ),
            ),
          ),

          SizedBox(
            height: 30,
          ),

          // banner
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 25),
            height: 124,
            child: PageView(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/banner.png')),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/banner.png')),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/banner.png')),
                  ),
                ),
              ],
            ),
          ),

          // menu
          Obx(() {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 260,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeController.daftarMakanan.length,
                itemBuilder: (context, index) =>
                    JenisMenu(data: homeController.daftarMakanan[index]),
              ),
            );
          }),
        ]),
      ),
    );
  }
}

class JenisMenu extends StatelessWidget {
  final Makanan data;
  JenisMenu({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 260,
      width: 190,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                Get.toNamed(Routes.Detail, arguments: data);
              },
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 190,
                width: 190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      data.nama!,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Rp${data.harga}',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            child: Container(
              height: 142,
              width: 142,
              child: Image.asset(data.imagePath!),
            ),
          ),
        ],
      ),
    );
  }
}
