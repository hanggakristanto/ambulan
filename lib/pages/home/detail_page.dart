// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ambulan/theme.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
            width: 500.0,
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://img.okezone.com/content/2019/08/26/338/2096952/jadi-perdebatan-dinkes-tangerang-jelaskan-perbedaan-mobil-ambulans-dan-jenazah-TqHMyzRzU6.jpg')),
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
              color: Colors.redAccent,
            ),
          ),
          Container(
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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Next page'),
      ),
      floatingActionButton: tombolKirim(),
      backgroundColor: backgroundColor1,
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
