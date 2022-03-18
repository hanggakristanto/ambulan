// import 'package:mobil_quran/models/user_model.dart';
// showmodalbottomsheet
<<<<<<< HEAD
// import 'package:ambulan/providers/auth_provider.dart';
// import 'package:ambulan/pages/home/chat_page.dart';
import 'package:ambulan/widgets/banner_page.dart';
import 'package:ambulan/widgets/list_ambulan.dart';
=======
// import 'package:mobil_quran/providers/auth_provider.dart';
// import 'package:mobil_quran/pages/home/chat_page.dart';
import 'package:mobil_quran/widgets/banner_page.dart';
>>>>>>> e81774327cd6b29d9330efa0dce2db1ed1fe7fe8
import 'package:flutter/material.dart';
import 'package:mobil_quran/theme.dart';

import '../../widgets/product_card.dart';
import '../../widgets/product_tile.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:provider/provider.dart';
import 'package:mobil_quran/widgets/icon_menu.dart';
import 'package:mobil_quran/widgets/more_icon_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                        bottomLeft: Radius.circular(33.0),
                        bottomRight: Radius.circular(33.0)),
                    color: bannerColor,
                  ),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    margin: EdgeInsets.only(top: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 10,
                                left: defaultMargin,
                                right: defaultMargin),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  decoration: BoxDecoration(
                                    color: backgroundColor6,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/search.png',
                                          width: 17,
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Expanded(
                                          child: TextField(
                                            style: primaryTextStyle1,
                                            decoration:
                                                InputDecoration.collapsed(
                                                    hintText: 'Cari sesuatu...',
                                                    hintStyle:
                                                        subtitleTextStyle),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
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
              top: 100,
            ),
            child: BannerPage(),
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

    Widget menuIcon2() {
      return Container(
        padding: EdgeInsets.all(10),
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
                    title: "Qur'an Call",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                  child: IconMenu(
                    image: "assets/images/feature/car.png",
                    title: "Simpatik",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/mobilquran');
                  },
                  child: IconMenu(
                    image: "assets/images/feature/car.png",
                    title: "Mobil Quran",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                  child: IconMenu(
                    image: "assets/images/feature/car.png",
                    title: "Ambulan",
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
                    Navigator.pushNamed(context, '/coba');
                  },
                  child: IconMenu(
                    image: "assets/images/feature/car.png",
                    title: "SIGAB",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                  child: IconMenu(
                    image: "assets/images/feature/car.png",
                    title: "KASIH",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/map');
                  },
                  child: IconMenu(
                    image: "assets/images/feature/car.png",
                    title: "Tahfidz",
                  ),
                ),
                MoreIconMenu(),
              ],
            ),
          ],
        ),
        margin: EdgeInsets.all(defaultMargin),
        // height: double.infinity,
        // width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(defaultMargin),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
      );
    }

    Widget daftarBerita() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Kabar Berita',
          style: textColorStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

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

    Widget spasi() {
      return SizedBox(
        height: 0,
      );
    }

    Widget daftarmobil_quran() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Daftar mobil_quran',
          style: textColorStyle.copyWith(
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

    Widget daftarAmbulan2() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Daftar Ambulan',
          style: textColorStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget card2() {
      return Container(
        margin: EdgeInsets.only(
          top: 14,
        ),
        child: Column(
          children: const [
            ListAmbulan(),
            ListAmbulan(),
            ListAmbulan(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        stack2(),
        menuIcon2(),
        daftarBerita(),
        popularProducts(),
        spasi(),
        daftarmobil_quran(),
        card(),
        daftarAmbulan2(),
        card2(),
      ],
    );

    // return Scaffold(
    //   body: ListView(
    //     children: [
    //       stack2(),
    //       // header(),
    //       // banner(),
    //       spasi(),
    //       menuIcon2(),
    //       popularProducts(),
    //       daftarmobil_quran(),
    //       card(),
    //     ],
    //   ),
    // );
  }
}
