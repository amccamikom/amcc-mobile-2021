import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'model/makanan.dart';

class DetailItemView extends StatelessWidget {
  DetailItemView({Key? key}) : super(key: key);

  final Makanan data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FC),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            CupertinoIcons.arrow_left,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 64),
                      Text(
                        data.nama!,
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Text(
                        'Harga',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Rp${data.harga}',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -90,
                  child: Image.asset(
                    data.imagePath!,
                    width: 300,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(35),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(29),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Deskripsi',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          data.rating.toString(),
                          style: TextStyle(
                            color: Colors.amber,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 24),
                Text(
                  data.deskripsi!,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: data.bahanMakanan!
                      .map((e) => BahanItem(imagePath: e))
                      .toList(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BahanItem extends StatelessWidget {
  final String imagePath;
  const BahanItem({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76,
      height: 76,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(imagePath),
    );
  }
}
