import 'package:flutter/material.dart';
import 'package:ambulan/theme.dart';

void main() {
  runApp(MaterialApp(
    home: StackPage(),
  ));
}

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget stack2() {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://img.okezone.com/content/2019/08/26/338/2096952/jadi-perdebatan-dinkes-tangerang-jelaskan-perbedaan-mobil-ambulans-dan-jenazah-TqHMyzRzU6.jpg')),
                  borderRadius: BorderRadius.all(Radius.circular(1.0)),
                  color: Colors.redAccent,
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 177),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                  color: backgroundColor1,
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
                            style: primaryTextStyle.copyWith(
                                fontWeight: medium, fontSize: 18),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            '''Khusus untuk petugas OPD (Organisasi Perangkat Daerah) yang membantu pelayanan aplikasi Layanan Darurat 112, terdapat fitur baru di aplikasi layanan darurat 112 yaitu Mobile Application for Field Responder. Selain itu, masyarakat juga akan lebih mudah dalam mengakses panggilan darurat dengan menekan Panic Button pada aplikasi tersebut.
Baca selengkapnya di artikel "Daftar Nomor Telepon Darurat di Indonesia, dari 112 hingga 118"''',
                            style: primaryTextStyle.copyWith(
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
              ),
            ],
          ),
        ),
      );
    }

    Widget tombolKirim() {
      return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton.extended(
              backgroundColor: primaryColor,
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
          ],
        ),
      );
    }

    Widget tombolKirim2() {
      return Container(
        margin: EdgeInsets.only(top: 120, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton.extended(
              backgroundColor: primaryColor,
              onPressed: () {
                Navigator.pushNamed(context, '/form');
              },
              // icon: Icon(Icons.add),
              label: Text(
                'Donasi',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Ambulan'),
      ),
      floatingActionButton: tombolKirim(),
      body: Stack(children: [
        stack2(),
        tombolKirim2(),
      ]),
    );
  }
}
