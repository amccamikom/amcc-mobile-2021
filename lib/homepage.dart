import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makan_yok_app/constant.dart';
import 'package:makan_yok_app/widget_menu.dart';

import 'app_routes.dart';

class HomepageView extends StatefulWidget {
  const HomepageView({Key? key}) : super(key: key);

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {
  List data = [];

  get namaUser => 'Luthfi Asmara';

  Future<List<dynamic>> loadJsonData() async {
    var jsonText =
        await rootBundle.loadString('assets/localdata/menu_makanan.json');
    setState(() => data = json.decode(jsonText));
    print(data);
    return data;
  }

  @override
  Widget build(BuildContext context) {
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
                  onPressed: () => Navigator.of(context).pushNamed('/homepage'),
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
                      Navigator.of(context).pushNamed(Routes.Profile),
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
            ],
          )),
      body: Container(
          color: putih,
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
                          Text('Hai, $namaUser', style: ukuran1),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Mau makan apa \nhari ini?', style: ukuran2),
                        ]),
                  ),

                  // foto-profil
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.Profile);
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
                            image: AssetImage('assets/luthfi.png'),
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
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                height: 260,
                child: FutureBuilder(
                    future: loadJsonData(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
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
                                      Navigator.of(context)
                                          .pushNamed(Routes.Detail);
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            snapshot.data[index]['nama_menu'],
                                            style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            snapshot.data[index]['deskripsi'],
                                            style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            snapshot.data[index]['harga'].toString(),
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
                                    child: Image.asset(
                                        snapshot.data[index]['img']),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                      }
                      return Text('data');
                    }))
          ])),
    );
  }
}

class VariantMenu extends StatelessWidget {
  final String labelmenu;
  final String deskripsi;
  final String harga;
  final String navigasi;
  final String img;

  VariantMenu(
      {required this.labelmenu,
      required this.deskripsi,
      required this.harga,
      required this.navigasi,
      required this.img});

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
                Navigator.of(context).pushNamed(navigasi);
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
                      labelmenu,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      deskripsi,
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      harga,
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
              child: Image.asset(img),
            ),
          ),
        ],
      ),
    );
  }
}
