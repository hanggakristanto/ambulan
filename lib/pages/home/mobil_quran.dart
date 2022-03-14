// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobil_quran/theme.dart';

class MobilQuran extends StatefulWidget {
  const MobilQuran({Key? key}) : super(key: key);

  @override
  State<MobilQuran> createState() => _MobilQuranState();
}

class _MobilQuranState extends State<MobilQuran> {
  List images = [
    'assets/image_1.png',
    'assets/image_1.png',
    'assets/image_1.png'
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget stack2() {
      return Stack(
        children: <Widget>[
          Container(
            height: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: Image.asset('assets/mo.jpeg',
                  fit: BoxFit.fill, height: 700.0, width: 1000.0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 120, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/form');
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 12, bottom: 12, left: 12, right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: tombolColor,
                    ),
                    child: Text(
                      "Donasi",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                // FloatingActionButton.extended(
                //   backgroundColor: tombolColor,
                //   onPressed: () {
                //     Navigator.pushNamed(context, '/form');
                //   },
                //   // icon: Icon(Icons.add),
                //   label: Text(
                //     'Donasi',
                //     style: primaryTextStyle.copyWith(
                //       fontSize: 16,
                //       fontWeight: semiBold,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 17),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: dasarColor,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
                right: defaultMargin,
                left: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Keterangan',
                    style: textColorStyle.copyWith(
                        fontWeight: medium, fontSize: 18),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    '''Mobile Qur’an (MOQU) adalah suatu program edukasi dinamis berbasis teknologi dan story telling berbasis tahfidzul Qur’an yang diperuntukkan komunitas, sekolah, majelis taklim, dan masyarakat pada umumnya.

Tujuan Program

Tujuan aktivitas Program MOQU adalah sebagai berikut:

    Memberi motivasi terutama kepada anak-anak untuk cinta kepada Al-Qur’an.
    Mengajak kepada orang tua dan masyarakat untuk mendukung aktivitas menghafal Al-Qur’an.
    Mengenalkan DAQU Value kepada masyarakat melalui dongeng yang berbasis multimedia.
    Inisiasi gerakan Rumah Tahfidz di berbagai wilayah.
    Membangun spirit generasi Qur’ani di tengah masyarakat.

Sasaran Program

- Sasaran Umum

    Siswa SD – SMA,
    TPA
    Majelis Taklim
    Komunitas
    Masyarakat umumd
    Anak-anak korban bencana alam (recovery dan emergency).

- Sasaran Wilayah

    Daerah marjinal
    Perkotaan
    Pedesaan
    Kawasan Rawan Bencana dan Kawasan Terdampak Bencana

- Output dan Indikator Keberhasilan Program

Pencapaian indikator keberhasilan program Mobile Qur’an kepada penerima manfaat antara lain:

    Memahami metode menghafal Al-Qur’an
    Memahami kisah-kisah Islami
    Belajar mengamalkan Daqu method (Sholat wajib awal waktu, Sholat sunnah, Puasa Sunnah, Sedekah, dan Menghafal Al-Qur’an)
    Munculnya motivasi untuk dekat dengan Al Qur’an
    Pembiasaan mengaji tiap hari
    Penanaman nilai-nilai kejujuran dan Anti-Korupsi
    Berkembangnya jumlah Rumah Tahfidz di tengah masyarakat

Petunjuk Pelaksanaan

- Aktivitas Program

MOQU beraktivitas sebagai sarana edukasi yang dilengkapi dengan trainer yang memiliki kompetensi mendongeng dan memahami metode Tahfidzul Qur’an (minimal metode sima’iyyah atau mendengar berulang-ulang).

Edukasi MOQU berbasis multimedia untuk optimalisasi kemampuan audio visual penerima program yang dilaksanakan baik indoor maupun outdoor disesuaikan dengan kondisi dan kemanfaatan situasi.

MOQU dapat digunakan dalam aktivitas recovery paskabencana berbasis tahfidzul Qur’an sebagai sarana trauma healing kepada masyarakat daerah bencana

- Konten Program

Program MOQU memiliki konten-konten setiap kunjungan sebagai berikut:

Usia Sekolah Dasar (6-12 tahun)

• Akhlak Mulia                                            • Menghidupkan yang Sunnah

• Berbakti kepada Orang Tua                       • Tauhid

• Menghafal Al-Qur’an itu mudah                  • Kejujuran dan Anti Korupsi

 

Usia Sekolah Menengah (13-17 tahun)

• Tauhid: Allah Dulu, Allah Lagi, Allah Terus   • Miracle of Giving

• Berbakti kepada Orang Tua                       • Menghafal Al-Qur’an itu Keren

• Dream, Pray, Action                                  • Just Believe!

• Kejujuran dan Anti Korupsi

 

Umum

• Tauhid: Allah Dulu, Allah Lagi, Allah Terus   • Just Believe!

• Dream, Pray, Action                                  • Miracle of Giving

• Kejujuran dan Anti Korupsi

 

Petunjuk Teknis

- Setting Program

Program MOQU dapat dilaksanakan pada 2 situasi, yakni:

    Outdoor/indoor dengan instrument audio visual

Pada situasi ini, trainer dapat mengoptimalkan penggunaan instrument audio visual untuk melakukan training MOQU.

    Outdoor/indoor tanpa instrument audio visual

Pada situasi ini, trainer diharuskan memiliki kompetensi mengarahkan audiens dengan gestur, intonasi, dan kelihaian mendongeng.

Durasi Aksi Mobile Qur’an

Durasi setiap tema kunjungan Program MOQU adalah 60 - 90 menit dengan komposisi sebagai berikut:

    Pengkondisian, tilawah pembukaan selama 5 – 10 menit
    Lagu-lagu dan video motivasi selama 10 – 15 menit
    Dongeng dan Pengisahan 20 – 40 menit
    Praktik dan Motivasi One Day One Ayat (ODOA) dengan reward selama 15 – 20 menit
    Doa dan Muhasabah selama 5 - 10 menit.

-Proporsi Konten Program

    Motivasi Tahfidzul Qur’an (30%)
    Dongeng dan Kisah Inspirasi (40%)
    Metode Tahfidz (20%)
    Muhasabah (10%)

Materi MOQU juga meliputi DAQU Value yaitu ayat-ayat yang berkaitan dengan DAQU Method yaitu sholat tahajjud, sholat dhuha, shaum sunnat, menghafal Al-Qur’an dan bersedekah yakni:

Al-Qur’an Surat Al-Israa 69 yang berkaitan dengan perintah mendirikan shalat Tahajjud sebagai ibadah tambahan (nafilah).

    Al-Qur’an Surat Al- Baqarah 183 yang berkaitan dengan perintah puasa khususnya puasa Ramadhan.
    Al-Qur’an Surat Al-An’am 160 yang berkaitan dengan balasan Allah kepada yang berbuat kebaikan dan berkaitan dengan ayat sedekah
    Al-Qur’an surat Al Qomar 17 tentang kemudahan menghafal AlQur’an.

- Ketentuan Trainer

Trainer MOQU harus memiliki kompetensi sebagai berikut:

    Memahami psikologi perkembangan anak usia 6 – 17 tahun.
    Memahami metode Tahfidzul Qur’an.
    Memiliki kompetensi mendongeng dan menyampaikan kisah.
    Dapat mengoperasikan instrument audio visual dengan baik.
    Secara teknis, setiap aksi Mobile Qur’an, trainer memakai seragam berlogo PPPA Daarul Qur’an dan atau Mobile Qur’an.
 ''',
                    style: textColorStyle.copyWith(
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 111,
            ),
          ],
        ),
      );
    }

    Widget tombolKirim() {
      return Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(bottom: 10),
        child: FloatingActionButton.extended(
          backgroundColor: tombolColor,
          onPressed: () {
            Navigator.pushNamed(context, '/form');
          },
          // icon: Icon(Icons.add),
          label: Text(
            'Pesan Sekarang',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Next page'),
      ),
      floatingActionButton: tombolKirim(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: dasarColor,
      body: ListView(
        children: [
          stack2(),
          content(),
        ],
      ),
    );
  }
}
// class ProductPage extends StatefulWidget {
//   const ProductPage({Key? key}) : super(key: key);

//   @override
//   State<ProductPage> createState() => _ProductPageState();
// }

// class _ProductPageState extends State<ProductPage> {
//   List images = [
//     'assets/image_1.png',
//     'assets/image_1.png',
//     'assets/image_1.png'
//   ];

//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     Widget indicator(int index) {
//       return Container(
//         width: currentIndex == index ? 16 : 4,
//         height: 4,
//         margin: EdgeInsets.symmetric(horizontal: 2),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: currentIndex == index ? primaryColor : Color(0xffC4C4C4),
//         ),
//       );
//     }

//     Widget header() {
//       int index = -1;
//       return Column(
//         children: [
//           Container(
//             margin: EdgeInsets.only(
//               top: 20,
//               left: defaultMargin,
//               right: defaultMargin,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: Icon(
//                     Icons.chevron_left,
//                   ),
//                 ),
//                 Icon(
//                   Icons.shopping_bag,
//                   color: backgroundColor1,
//                 )
//               ],
//             ),
//           ),
//           CarouselSlider(
//             items: images
//                 .map(
//                   (image) => Image.asset(
//                     image,
//                     width: MediaQuery.of(context).size.width,
//                     height: 310,
//                     fit: BoxFit.cover,
//                   ),
//                 )
//                 .toList(),
//             options: CarouselOptions(
//                 initialPage: 0,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     currentIndex = index;
//                   });
//                 }),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: images.map((e) {
//               index++;
//               return indicator(index);
//             }).toList(),
//           )
//         ],
//       );
//     }

//     Widget content() {
//       return Container(
//         width: double.infinity,
//         margin: EdgeInsets.only(top: 17),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.vertical(
//             top: Radius.circular(24),
//           ),
//           color: backgroundColor1,
//         ),
//         child: Column(
//           children: [
//             Container(
//               margin: EdgeInsets.only(
//                 top: defaultMargin,
//                 left: defaultMargin,
//                 right: defaultMargin,
//               ),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'tes',
//                           style: primaryTextStyle.copyWith(
//                             fontSize: 18,
//                             fontWeight: semiBold,
//                           ),
//                         ),
//                         Text(
//                           'Hiiking',
//                           style: secondaryTextStyle.copyWith(
//                             fontSize: 12,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Image.asset(
//                     'assets/button_wishlist.png',
//                     width: 46,
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               margin: EdgeInsets.only(
//                 top: 20,
//                 left: defaultMargin,
//                 right: defaultMargin,
//               ),
//               padding: EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: backgroundColor2,
//                 borderRadius: BorderRadius.circular(4),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Price',
//                     style: primaryTextStyle,
//                   ),
//                   Text(
//                     'tes',
//                     style: priceTextStyle.copyWith(
//                       fontSize: 16,
//                       fontWeight: semiBold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               margin: EdgeInsets.only(
//                 top: defaultMargin,
//                 right: defaultMargin,
//                 left: defaultMargin,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Description',
//                     style: primaryTextStyle.copyWith(fontWeight: medium),
//                   ),
//                   SizedBox(
//                     height: 12,
//                   ),
//                   Text(
//                     '''lorem ipsum An Observatory debugger and profiler on Android SDK built for x86 is available at
// The Flutter DevTools debugger and profiler on Android SDK built for x86 is available at:''',
//                     style: subtitleTextStyle.copyWith(
//                       fontWeight: light,
//                     ),
//                     textAlign: TextAlign.justify,
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               margin: EdgeInsets.only(
//                 top: defaultMargin,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: defaultMargin,
//                     ),
//                     child: Text(
//                       'Familiar shows',
//                       style: primaryTextStyle.copyWith(
//                         fontWeight: medium,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               margin: EdgeInsets.all(defaultMargin),
//               child: Row(
//                 children: [
//                   Container(
//                     height: 54,
//                     width: 54,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage('assets/button_chat.png'),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 16,
//                   ),
//                   Expanded(
//                     child: Container(
//                       height: 54,
//                       child: TextButton(
//                         onPressed: () {},
//                         style: TextButton.styleFrom(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           backgroundColor: primaryColor,
//                         ),
//                         child: Text(
//                           'Perss',
//                           style: primaryTextStyle.copyWith(
//                             fontSize: 16,
//                             fontWeight: semiBold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       );
//     }

//     return Scaffold(
//       backgroundColor: backgroundColor6,
//       body: ListView(
//         children: [
//           header(),
//           content(),
//         ],
//       ),
//     );
//   }
// }
