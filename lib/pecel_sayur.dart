import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PecelSayurView extends StatelessWidget {
  const PecelSayurView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // tombol kembali ke homepage
          Positioned(
            top: 80,
            left: 15,
            child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/homepage');
                },
                child: Icon(Icons.arrow_back)),
          ),

          // Judul dan label harga menggunakan positioned di sebelah kiri
          Positioned(
            top: 170,
            left: 35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text('Pecel Sayur',
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w500)),
                ),
                Container(
                  child: Text('Harga',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                      )),
                ),
                Container(
                  child: Text('Rp 11.000',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ),

          // Image menggunakan positioned di sebelah kiri
          Positioned(
              top: 140,
              right: -60,
              child: Container(
                  height: 267,
                  width: 267,
                  child: Image.asset('assets/pecel-sayur.png'))),

          //Container dengan top border radius untuk menampung deskripi
          Positioned(
              top: 443,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white),
                child: Stack(
                  children: [
                    // label deskripsi dan rating dengan row yang dibungkus oleh container
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      margin: EdgeInsets.only(top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text('Deskripsi',
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber),
                                Text(
                                  '4.9',
                                  style: GoogleFonts.poppins(
                                      color: Colors.amber,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // detail deskripsi produk
                    Positioned(
                      top: 65,
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 35),
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 17),
                          child: Text(
                            'Dikasih info maszeh.\nPecel adalah makanan khas Indonesia, bisa dibilang pecel berasal dari daerah Madiun, Jawa Timur. Cita rasa pecel tidak perlu diragukan lagi, dengan satu suapan saja kita bisa merasakan kenikmatan yang tak terhingga',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                            ),
                          )),
                    ),

                    // row yang dibungkus positioned berisi 3 gambar
                    Positioned(
                      top: 250,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 35),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/bawang.png'))),
                              ),
                              Container(
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage('assets/tomat.png'))),
                              ),
                              Container(
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/wortel.png'))),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
