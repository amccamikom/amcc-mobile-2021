import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomepageView extends StatelessWidget {
  const HomepageView({Key? key}) : super(key: key);

  get namaUser => 'Luthfi Asmara';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          height: 75,
          decoration: BoxDecoration(
              color: Color(0xFF333333),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {},
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
                  onPressed: () {},
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
        color: Color(0xFFF6FAFC),
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
                        Text('Hai, $namaUser',
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
                    Navigator.pushNamed(context, '/profilepage');
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
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 260,
                  width: 190,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        child: GestureDetector(
                          onTap: () {},
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
                                  'Pecel Sayur',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Mix vegetables inggridients',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "USD 14",
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
                          child: Image.asset('assets/get-started.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 260,
                  width: 190,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        child: GestureDetector(
                          onTap: () {},
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
                                  'Pecel Ga Sayur',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Mix vegetables inggridients',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "USD 14",
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
                          child: Image.asset('assets/get-started.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
