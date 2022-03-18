// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ambulan/theme.dart';

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
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left,
                  ),
                ),
                Icon(
                  Icons.shopping_bag,
                  color: backgroundColor1,
                )
              ],
            ),
          ),
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
                    '''Mobile Qur’an (MOQU) adalah suatu program edukasi dinamis berbasis teknologi dan story telling berbasis tahfidzul Qur’an yang diperuntukkan komunitas, sekolah, majelis taklim, dan masyarakat pada umumnya.''',
                    style: textColorStyle.copyWith(
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Text(
                    '''Tujuan Program
 Tujuan aktivitas Program MOQU adalah sebagai berikut:
• Memberi motivasi terutama kepada anak-anak untuk cinta kepada Al-Qur/’an.
• Mengajak kepada orang tua dan masyarakat untuk mendukung aktivitas menghafal Al-Qur’an.
• Mengenalkan DAQU Value kepada masyarakat melalui dongeng yang berbasis multimedia.
• Inisiasi gerakan Rumah Tahfidz di berbagai wilayah.
• Membangun spirit generasi Qur’ani di tengah masyarakat.''',
                    style: textColorStyle.copyWith(
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Text(
                    '''Sasaran Program
- Sasaran Umum
  • Siswa SD – SMA,
  • TPA
  • Majelis Taklim
  • Komunitas
  • Masyarakat umum
  • Anak-anak korban bencana alam (recovery dan emergency).

- Sasaran Wilayah
  • Daerah marjinal
  • Perkotaan
  • Pedesaan
  • Kawasan Rawan Bencana dan Kawasan Terdampak Bencana

- Output dan Indikator Keberhasilan Program
Pencapaian indikator keberhasilan program Mobile Qur’an kepada penerima manfaat antara lain:
  • Memahami metode menghafal Al-Qur’an
  • Memahami kisah-kisah Islami
  • Belajar mengamalkan Daqu method (Sholat wajib awal waktu, Sholat sunnah, Puasa Sunnah, Sedekah, dan Menghafal Al-Qur’an)
  • Munculnya motivasi untuk dekat dengan Al Qur’an
  • Pembiasaan mengaji tiap hari
  • Penanaman nilai-nilai kejujuran dan Anti-Korupsi
  • Berkembangnya jumlah Rumah Tahfidz di tengah masyarakat
''',
                    style: textColorStyle.copyWith(
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Text(
                    '''Petunjuk Pelaksanaan

- Aktivitas Program
MOQU beraktivitas sebagai sarana edukasi yang dilengkapi dengan trainer yang memiliki kompetensi mendongeng dan memahami metode Tahfidzul Qur’an (minimal metode sima’iyyah atau mendengar berulang-ulang).
Edukasi MOQU berbasis multimedia untuk optimalisasi kemampuan audio visual penerima program yang dilaksanakan baik indoor maupun outdoor disesuaikan dengan kondisi dan kemanfaatan situasi.
MOQU dapat digunakan dalam aktivitas recovery paskabencana berbasis tahfidzul Qur’an sebagai sarana trauma healing kepada masyarakat daerah bencana

- Konten Program
Program MOQU memiliki konten-konten setiap kunjungan sebagai berikut:

Usia Sekolah Dasar (6-12 tahun)
• Akhlak Mulia
• Menghidupkan yang Sunnah
• Berbakti kepada Orang Tua
• Tauhid
• Menghafal Al-Qur’an itu mudah
• Kejujuran dan Anti Korupsi 

Usia Sekolah Menengah (13-17 tahun)
• Tauhid: Allah Dulu, Allah Lagi, Allah Terus
• Miracle of Giving
• Berbakti kepada Orang Tua
• Menghafal Al-Qur’an itu Keren
• Dream, Pray, Action 
• Just Believe!
• Kejujuran dan Anti Korupsi 

Umum
• Tauhid: Allah Dulu, Allah Lagi, Allah Terus
• Just Believe!
• Dream, Pray, Action
• Miracle of Giving
• Kejujuran dan Anti Korupsi
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
      floatingActionButton: tombolKirim(),
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
