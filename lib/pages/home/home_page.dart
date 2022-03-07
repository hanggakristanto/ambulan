// import 'package:ambulan/models/user_model.dart';
// showmodalbottomsheet
// import 'package:ambulan/providers/auth_provider.dart';
// import 'package:ambulan/pages/home/chat_page.dart';
import 'package:ambulan/widgets/banner_page.dart';
import 'package:flutter/material.dart';
import 'package:ambulan/theme.dart';

import '../../widgets/product_card.dart';
import '../../widgets/product_tile.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:provider/provider.dart';
import 'package:ambulan/widgets/icon_menu.dart';
import 'package:ambulan/widgets/more_icon_menu.dart';

final imgList = [
  'https://sedekahonline.com/uploads/camp_slider/20211207095422-2021-12-07camp_slider095405.jpg',
  'https://sedekahonline.com/uploads/camp_slider/20211112110747-2021-11-12camp_slider110714.jpg',
  'https://sedekahonline.com/uploads/camp_slider/20211207095422-2021-12-07camp_slider095405.jpg',
  'https://sedekahonline.com/uploads/camp_slider/20211112110747-2021-11-12camp_slider110714.jpg',
  'https://sedekahonline.com/uploads/camp_slider/20211207095422-2021-12-07camp_slider095405.jpg',
  'https://sedekahonline.com/uploads/camp_slider/20211112110747-2021-11-12camp_slider110714.jpg'
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({Key? key}) : super(key: key);
  // int _current = 0;
  // final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    Widget stack2() {
      return Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(22.0),
                        bottomRight: Radius.circular(22.0)),
                    color: tombolColor,
                  ),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    margin: EdgeInsets.only(top: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                // 'Selamat Datang ${user.name}',
                                'LAYANAN PPPA',
                                textAlign: TextAlign.center,
                                style: primaryTextStyle.copyWith(
                                  fontSize: 17,
                                  fontWeight: semiBold,
                                ),
                              ),
                              Text(
                                'SedekahOnline Crowdfunding Muslim Pertama di Indonesia',
                                textAlign: TextAlign.center,
                                style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 54,
            ),
            child: Column(
              children: const [
                BannerPage(),
              ],
            ),
          ),
        ],
      );
    }

    // Widget header() {
    //   return Container(
    //     margin: EdgeInsets.only(
    //       top: defaultMargin,
    //       left: defaultMargin,
    //       right: defaultMargin,
    //     ),
    //     child: Row(
    //       children: [
    //         Expanded(
    //           child: Column(
    //             // crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 // 'Selamat Datang ${user.name}',
    //                 'LAYANAN PPPA',
    //                 textAlign: TextAlign.center,
    //                 style: subtitleTextStyle.copyWith(
    //                   fontSize: 17,
    //                   fontWeight: semiBold,
    //                 ),
    //               ),
    //               Text(
    //                 'SedekahOnline Crowdfunding Muslim Pertama di Indonesia',
    //                 textAlign: TextAlign.center,
    //                 style: subtitleTextStyle.copyWith(
    //                   fontSize: 12,
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Container(
    //           width: 54,
    //           height: 54,
    //           decoration: BoxDecoration(
    //             shape: BoxShape.circle,
    //             image: DecorationImage(
    //               image: AssetImage(
    //                 'assets/image_profile.png',
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   );
    // }

    // Widget banner() {
    //   return Container(
    //     margin: EdgeInsets.only(
    //       top: 14,
    //     ),
    //     child: Column(
    //       children: const [
    //         BannerPage(),
    //       ],
    //     ),
    //   );
    // }
    // Widget categories() {
    //   return Container(
    //     margin: EdgeInsets.only(
    //       top: defaultMargin,
    //     ),
    //     child: SingleChildScrollView(
    //       scrollDirection: Axis.horizontal,
    //       child: Row(
    //         children: [
    //           SizedBox(
    //             width: defaultMargin,
    //           ),
    //           Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 12,
    //               vertical: 10,
    //             ),
    //             margin: EdgeInsets.only(right: 16),
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(12),
    //               color: primaryColor,
    //             ),
    //             child: Text(
    //               'Sedekah',
    //               style: primaryTextStyle.copyWith(
    //                 fontSize: 13,
    //                 fontWeight: medium,
    //               ),
    //             ),
    //           ),
    //           Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 12,
    //               vertical: 10,
    //             ),
    //             margin: EdgeInsets.only(right: 16),
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(12),
    //               border: Border.all(
    //                 color: subtitleColor,
    //               ),
    //               color: transparentColor,
    //             ),
    //             child: Text(
    //               'Wakaf',
    //               style: subtitleTextStyle.copyWith(
    //                 fontSize: 13,
    //                 fontWeight: medium,
    //               ),
    //             ),
    //           ),
    //           Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 12,
    //               vertical: 10,
    //             ),
    //             margin: EdgeInsets.only(right: 16),
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(12),
    //               border: Border.all(
    //                 color: subtitleColor,
    //               ),
    //               color: transparentColor,
    //             ),
    //             child: Text(
    //               'Infaq',
    //               style: subtitleTextStyle.copyWith(
    //                 fontSize: 13,
    //                 fontWeight: medium,
    //               ),
    //             ),
    //           ),
    //           Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 12,
    //               vertical: 10,
    //             ),
    //             margin: EdgeInsets.only(right: 16),
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(12),
    //               border: Border.all(
    //                 color: subtitleColor,
    //               ),
    //               color: transparentColor,
    //             ),
    //             child: Text(
    //               'Campaign',
    //               style: subtitleTextStyle.copyWith(
    //                 fontSize: 13,
    //                 fontWeight: medium,
    //               ),
    //             ),
    //           ),
    //           Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 12,
    //               vertical: 10,
    //             ),
    //             margin: EdgeInsets.only(right: 16),
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(12),
    //               border: Border.all(
    //                 color: subtitleColor,
    //               ),
    //               color: transparentColor,
    //             ),
    //             child: Text(
    //               'Donasi',
    //               style: subtitleTextStyle.copyWith(
    //                 fontSize: 13,
    //                 fontWeight: medium,
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
    // }

    // Widget slider() {
    //   return Container(
    //     child: Column(
    //       children: [
    //         CarouselSlider(
    //           options: CarouselOptions(
    //             autoPlay: true,
    //             aspectRatio: 2.0,
    //             enlargeCenterPage: true,
    //             onPageChanged: (index, reason) {
    //               setState(() {
    //                 _current = index;
    //               });
    //             },
    //           ),
    //           items: imgList
    //               .map((item) => Container(
    //                     child: Container(
    //                       margin: EdgeInsets.all(5.0),
    //                       child: ClipRRect(
    //                           borderRadius:
    //                               BorderRadius.all(Radius.circular(5.0)),
    //                           child: Stack(
    //                             children: <Widget>[
    //                               Image.network(item,
    //                                   fit: BoxFit.cover, width: 1000.0),
    //                               Positioned(
    //                                 bottom: 0.0,
    //                                 left: 0.0,
    //                                 right: 0.0,
    //                                 child: Container(
    //                                   decoration: BoxDecoration(
    //                                     gradient: LinearGradient(
    //                                       colors: const [
    //                                         Color.fromARGB(200, 0, 0, 0),
    //                                         Color.fromARGB(0, 0, 0, 0)
    //                                       ],
    //                                       begin: Alignment.bottomCenter,
    //                                       end: Alignment.topCenter,
    //                                     ),
    //                                   ),
    //                                   padding: EdgeInsets.symmetric(
    //                                       vertical: 10.0, horizontal: 20.0),
    //                                   child: Text(
    //                                     'No. ${imgList.indexOf(item)} image',
    //                                     style: TextStyle(
    //                                       color: Colors.white,
    //                                       fontSize: 20.0,
    //                                       fontWeight: FontWeight.bold,
    //                                     ),
    //                                   ),
    //                                 ),
    //                               ),
    //                             ],
    //                           )),
    //                     ),
    //                   ))
    //               .toList(),
    //         ),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: imgList.asMap().entries.map((entry) {
    //             return GestureDetector(
    //               onTap: () => _controller.animateToPage(entry.key),
    //               child: Container(
    //                 width: 12.0,
    //                 height: 12.0,
    //                 margin:
    //                     EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
    //                 decoration: BoxDecoration(
    //                     shape: BoxShape.circle,
    //                     color: (Theme.of(context).brightness == Brightness.dark
    //                             ? Colors.white
    //                             : Colors.black)
    //                         .withOpacity(_current == entry.key ? 0.9 : 0.4)),
    //               ),
    //             );
    //           }).toList(),
    //         ),
    //       ],
    //     ),
    //   );
    // }
    // Widget popularProductsTitle() {
    //   return Container(
    //     margin: EdgeInsets.only(
    //       top: defaultMargin,
    //       left: defaultMargin,
    //       right: defaultMargin,
    //     ),
    //     child: Text(
    //       'Popular Products',
    //       style: secondaryTextStyle.copyWith(
    //         fontSize: 22,
    //         fontWeight: semiBold,
    //       ),
    //     ),
    //   );
    // }

    Widget popularProducts() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Row(children: const [
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ]),
            ],
          ),
        ), //prefer const literals as parameters of constructors on immutable slacces
      );
    }

    // Widget menuIcon() {
    //   return Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     textBaseline: TextBaseline.alphabetic,
    //     children: <Widget>[
    //       Container(
    //         alignment: Alignment.center,
    //         width: 75,
    //         height: 75,
    //         color: Colors.teal,
    //         child: Image.network(
    //           "https://www.kindpng.com/picc/m/295-2958977_ambulance-icon-circle-hd-png-download.png",
    //           fit: BoxFit.cover,
    //           height: double.infinity,
    //           width: double.infinity,
    //           alignment: Alignment.center,
    //         ),
    //       ),
    //       GestureDetector(
    //         onTap: () {
    //           Navigator.pushNamed(context, '/detaildua');
    //         },
    //         child: Container(
    //           alignment: Alignment.center,
    //           width: 75,
    //           height: 75,
    //           color: Colors.deepOrange,
    //           child: Image.network(
    //             "https://www.kindpng.com/picc/m/295-2958977_ambulance-icon-circle-hd-png-download.png",
    //             fit: BoxFit.cover,
    //             height: double.infinity,
    //             width: double.infinity,
    //             alignment: Alignment.center,
    //           ),
    //         ),
    //       ),
    //       GestureDetector(
    //         onTap: () {
    //           Navigator.pushNamed(context, '/stack');
    //         },
    //         child: Container(
    //           alignment: Alignment.center,
    //           width: 75,
    //           height: 75,
    //           color: Colors.deepOrange,
    //           child: Image.network(
    //             "https://www.kindpng.com/picc/m/295-2958977_ambulance-icon-circle-hd-png-download.png",
    //             fit: BoxFit.cover,
    //             height: double.infinity,
    //             width: double.infinity,
    //             alignment: Alignment.center,
    //           ),
    //         ),
    //       ),
    //       GestureDetector(
    //         onTap: () {
    //           Navigator.pushNamed(context, '/detail');
    //         },
    //         child: Container(
    //           alignment: Alignment.center,
    //           width: 75,
    //           height: 75,
    //           color: Colors.deepOrange,
    //           child: Image.network(
    //             "https://www.kindpng.com/picc/m/295-2958977_ambulance-icon-circle-hd-png-download.png",
    //             fit: BoxFit.cover,
    //             height: double.infinity,
    //             width: double.infinity,
    //             alignment: Alignment.center,
    //           ),
    //         ),
    //       ),
    //     ],
    //   );
    // }

    Widget spasi() {
      return SizedBox(
        height: 12,
      );
    }

    Widget menuIcon2() {
      return Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/stack');
                  },
                  child: IconMenu(
                    image: "assets/images/feature/car.png",
                    title: "Car",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                  child: IconMenu(
                    image: "assets/images/feature/car.png",
                    title: "Car",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/detaildua');
                  },
                  child: IconMenu(
                    image: "assets/images/feature/car.png",
                    title: "Car",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                  child: IconMenu(
                    image: "assets/images/feature/car.png",
                    title: "Car",
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/stack');
                  },
                  child: IconMenu(
                    image: "assets/images/feature/car.png",
                    title: "Car",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                  child: IconMenu(
                    image: "assets/images/feature/car.png",
                    title: "Car",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/detaildua');
                  },
                  child: IconMenu(
                    image: "assets/images/feature/car.png",
                    title: "Car",
                  ),
                ),
                MoreIconMenu(),
              ],
            ),
          ],
        ),
      );
    }

    Widget daftarAmbulan() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Daftar Ambulan',
          style: secondaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget card() {
      return Container(
        margin: EdgeInsets.only(
          top: 14,
        ),
        child: Column(
          children: const [
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      );
    }

    // return ListView(
    //   children: [
    //     header(),
    //     // banner(),
    //     newArrivals(),
    //     spasi(),
    //     menuIcon2(),
    //     popularProducts(),
    //     daftarAmbulan(),
    //     card(),
    //   ],
    // );

    return Scaffold(
      body: ListView(
        children: [
          stack2(),
          // header(),
          // banner(),
          spasi(),
          menuIcon2(),
          popularProducts(),
          daftarAmbulan(),
          card(),
        ],
      ),
    );
  }
}
