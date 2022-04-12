class Makanan {
  String? nama;
  String? harga;
  double? rating;
  String? deskripsi;
  String? imagePath;
  List<String>? bahanMakanan;

  Makanan({
    this.nama,
    this.harga,
    this.rating,
    this.deskripsi,
    this.imagePath,
    this.bahanMakanan,
  });

  static List<Makanan> items = [
    Makanan(
      nama: 'Pecel Jamur Mba Rus',
      harga: '11.5k',
      rating: 4.7,
      deskripsi: 'Pecel jamur krispi enak mba rus',
      imagePath: 'assets/pecel-jamur.png',
      bahanMakanan: [
        'assets/tomat.png',
        'assets/wortel.png',
        'assets/bawang.png',
      ],
    ),
    Makanan(
      nama: 'Salad Mentah',
      harga: '25k',
      rating: 4.2,
      deskripsi: 'Makanan vegetarian ga rekomended karena mentah',
      imagePath: 'assets/salad-mentah.png',
      bahanMakanan: [
        'assets/tomat.png',
        'assets/wortel.png',
        'assets/bawang.png',
      ],
    ),
    Makanan(
      nama: 'Telur Bakar Mas Bambang',
      harga: '7k',
      rating: 4.8,
      deskripsi: 'Makanan anak kos di lesehan mas bambang depan camp AMCC lama',
      imagePath: 'assets/telur-bakar.png',
      bahanMakanan: [
        'assets/tomat.png',
        'assets/wortel.png',
        'assets/bawang.png',
      ],
    ),
    Makanan(
      nama: 'Nasi Rames Yudis',
      harga: '7k',
      rating: 5,
      deskripsi: 'Makanan langganan anak AMCC',
      imagePath: 'assets/rames-yudis.png',
      bahanMakanan: [
        'assets/tomat.png',
        'assets/wortel.png',
        'assets/bawang.png',
      ],
    ),
  ];
}
