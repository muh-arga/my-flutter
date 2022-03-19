import 'package:flutter/material.dart';
import 'package:my_flutter/detail_screen.dart';
import 'package:my_flutter/list_item.dart';
import 'package:my_flutter/model/tourism_place.dart';

class TourismList extends StatefulWidget {
  final List<TourismPlace> doneTourismPlaceList;

  const TourismList({Key? key, required this.doneTourismPlaceList})
      : super(key: key);

  @override
  _TourismListState createState() => _TourismListState(doneTourismPlaceList);
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> doneTourismPlaceList;
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
        name: "Surabaya Submarine Monument",
        location: "Jl Pemuda",
        imageAsset: "assets/images/submarine.jpg",
        deskripsi:
            "Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota, monumen ini sebenarnya merupakan kapal selam KRI Pasopati 410, salah satu armada Angkatan Laut Republik Indonesia buatan Uni Soviet tahun 1952.",
        hariBuka: "Buka Setiap Hari",
        jamBuka: "08:00 - 16:00",
        hargaTiket: "Rp 10.000,-",
        galeri: [
          "assets/images/monkasel_1.jpg",
          "assets/images/monkasel_2.jpg",
          "assets/images/monkasel_3.jpg",
        ]),
    TourismPlace(
      name: "Kelanteng Sanggar Agung",
      location: "Kanjeran",
      imageAsset: "assets/images/klanteng.jpg",
      deskripsi:
          "Ciri khas dari klenteng ini adalah sebuah patung Kwan Im setinggi 20 meter yang terletak di tepi laut. Klenteng ini dipersembahkan kepada Nan Hai Guan Shi Yin Pu Sa atau Bodhisatwa Kwan Im Laut Selatan. Patung ini dibangun setelah seorang karyawan Sanggar Agung melihat sesosok wanita berjubah putih berjalan di atas air pada saat ia sedang menutup Klenteng di malam hari.",
      hariBuka: "Buka Setiap Hari",
      jamBuka: "07:00 - 20:00",
      hargaTiket: "Rp 10.000,-",
      galeri: [
        "assets/images/kelenteng_1.jpg",
        "assets/images/kelenteng_2.jpg",
        "assets/images/kelenteng_3.jpg",
      ],
    ),
    TourismPlace(
      name: "House Of Sampoerna",
      location: "Krembangan Utara",
      imageAsset: "assets/images/sampoerna.jpg",
      deskripsi:
          "House of Sampoerna adalah sebuah museum tembakau dan markas besar Sampoerna yang terletak di Surabaya. Gaya arsitektur dari bangunan utamanya yang dipengaruhi oleh gaya kolonial Belanda dibangun pada 1862 dan sekarang menjadi situs sejarah. Sebelumnya dipakai sebagai panti asuhan yang diurus oleh Belanda, tempat tersebut dibeli pada 1932 oleh Liem Seeng Tee‚ pendiri Sampoerna‚ dengan tujuan dipakai sebagai fasilitas produksi rokok besar pertama Sampoerna.",
      jamBuka: "09:00 - 18:00",
      hariBuka: "Buka Setiap Hari",
      hargaTiket: "Gratis",
      galeri: [
        "assets/images/house_1.jpg",
        "assets/images/house_2.jpg",
        "assets/images/house_3.jpg",
      ],
    ),
    TourismPlace(
      name: "Tugu Pahlawan",
      location: "Alun-Alun Contong",
      imageAsset: "assets/images/pahlawan.jpg",
      deskripsi:
          "Tugu Pahlawan adalah sebuah monumen yang menjadi markah tanah Kota Surabaya. Tinggi monumen ini adalah 41,15 meter dan berbentuk lingga atau paku terbalik. Tubuh monumen berbentuk lengkungan-lengkungan sebanyak 10 lengkungan, dan terbagi atas 11 ruas.",
      hariBuka: "Buka Setiap Hari",
      jamBuka: "08:00 - 16:00",
      hargaTiket: "Rp 5.000,-",
      galeri: [
        "assets/images/pahlawan_1.jpg",
        "assets/images/pahlawan_2.jpg",
        "assets/images/pahlawan_3.jpg",
      ],
    ),
    TourismPlace(
      name: "Patung Suro Boyo",
      location: "Wonokromo",
      imageAsset: "assets/images/suroboyo.jpg",
      deskripsi:
          "Patung Sura dan Baya adalah sebuah patung yang merupakan lambang kota Surabaya. Patung ini berada di depan Kebun Binatang Surabaya. Patung ini terdiri atas dua hewan ini yang menjadi inspirasi nama kota Surabaya: ikan sura dan baya.",
      jamBuka: "24 Jam",
      hariBuka: "Buka Setiap Hari",
      hargaTiket: "Gratis",
      galeri: [
        "assets/images/suroboyo_1.jpg",
        "assets/images/suroboyo_2.jpg",
        "assets/images/suroboyo_3.jpg"
      ],
    ),
    TourismPlace(
      name: "Museum 10 November",
      location: "Alun-Alun Contong",
      imageAsset: "assets/images/museum.jpg",
      deskripsi:
          "Museum Sepuluh November Surabaya adalah salah satu museum yang terletak di Kota Surabaya, dibangun pada tahun 1945. Museum ini dibangun dengan tujuan untuk mempelajari dan memperdalam peristiwa Pertempuran Sepuluh November 1945",
      jamBuka: "08:00 - 16:00",
      hariBuka: "Buka Setiap Hari",
      hargaTiket: "Rp 5.000.-",
      galeri: [
        "assets/images/museum_1.jpg",
        "assets/images/museum_2.jpg",
        "assets/images/museum_3.jpg",
      ],
    ),
    TourismPlace(
      name: "Kebun Binatang Surabaya",
      location: "Darmo",
      imageAsset: "assets/images/binatang.jpg",
      deskripsi:
          "Kebun Binatang Surabaya adalah salah satu kebun binatang yang populer di Indonesia dan terletak di Surabaya. KBS merupakan kebun binatang yang pernah terlengkap se-Asia Tenggara, di dalamnya terdapat lebih dari 981 spesies satwa yang berbeda yang terdiri lebih dari 2.806 binatang.",
      hariBuka: "Buka Setiap Hari",
      jamBuka: "08:00 - 16:00",
      hargaTiket: "Rp. 15.000.-",
      galeri: [
        "assets/images/binatang_1.jpg",
        "assets/images/binatang_2.jpg",
        "assets/images/binatang_3.jpg",
      ],
    ),
    TourismPlace(
      name: "Atlantis Land",
      location: "Sukolilo Baru",
      imageAsset: "assets/images/atlantis.jpg",
      deskripsi:
          "Atlantis Land merupakan salah satu tempat wisata baru yang ada di Surabaya, berlokasi di Jl. Sukolilo 100 dan berada didalam area Kenjeran Park. Tempat wisata yang soft opening pada tanggal 23 Desember 2017 ini, memiliki beberapa wahana air dan darat yang bisa dinikmati oleh semua golongan usia. Terdapat berbagai wahana yang bisa anda dan keluarga mainkan di Atlantis Land.",
      hariBuka: "Buka Setiap Hari",
      jamBuka: "10:00 - 18:00",
      hargaTiket: "Rp 100.000.- - Rp 125.000.-",
      galeri: [
        "assets/images/atlantis_1.jpg",
        "assets/images/atlantis_2.jpg",
        "assets/images/atlantis_3.jpg",
      ],
    ),
  ];

  _TourismListState(this.doneTourismPlaceList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: ListItem(
            place: place,
            isDone: doneTourismPlaceList.contains(place),
            onCheckboxClick: (bool? value) {
              setState(() {
                if (value != null) {
                  value
                      ? doneTourismPlaceList.add(place)
                      : doneTourismPlaceList.remove(place);
                }
              });
            },
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
