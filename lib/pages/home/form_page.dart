// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ambulan/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io' show Platform;

class FormPage extends StatelessWidget {
  FormPage({Key? key}) : super(key: key);
  final TextEditingController namaC = TextEditingController();
  final TextEditingController waC = TextEditingController();
  final TextEditingController ktpC = TextEditingController();
  final TextEditingController alamatC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama Lengkap',
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor6,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: namaC,
                        style: primaryTextStyle1,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Masukkan Nama Lengkap',
                            hintStyle: subtitleTextStyle),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget noHp() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'No Wa',
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor6,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: waC,
                        style: primaryTextStyle1,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Masukkan No Wa',
                            hintStyle: subtitleTextStyle),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'No KTP',
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor6,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: ktpC,
                        style: primaryTextStyle1,
                        // obscureText: true,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Masukkan Nomor KTP',
                            hintStyle: subtitleTextStyle),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget alamat() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Alamat',
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor6,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: alamatC,
                        style: primaryTextStyle1,
                        // obscureText: true,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Masukkan Alamat',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget signInButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: GestureDetector(
          onTap: () {
            // openwhatsapp();
          },
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: tombolColor,
              shape: RoundedRectangleBorder(
                //localvariable can't be referenced before it is declared
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              openwhatsapp();
            },
            child: Text(
              'Kirim Pesan Sekarang',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ),
        ),
      );
    }

    // openwhatsapp() async {
    //   var whatsapp = "+919144040888";
    //   var whatsappURl_android =
    //       "whatsapp://send?phone=" + whatsapp + "&text=hello";
    //   var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
    //   if (Platform.isIOS) {
    //     // for iOS phone only
    //     if (await canLaunch(whatappURL_ios)) {
    //       await launch(whatappURL_ios, forceSafariVC: false);
    //     } else {
    //       ScaffoldMessenger.of(context).showSnackBar(
    //           SnackBar(content: new Text("whatsapp no installed")));
    //     }
    //   } else {
    //     // android , web
    //     if (await canLaunch(whatsappURl_android)) {
    //       await launch(whatsappURl_android);
    //     } else {
    //       ScaffoldMessenger.of(context).showSnackBar(
    //           SnackBar(content: new Text("whatsapp no installed")));
    //     }
    //   }
    // }

    // print(namaC);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Pemesanan'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: ListView(
          children: [
            emailInput(),
            noHp(),
            passwordInput(),
            alamat(),
            signInButton(),
            Spacer(),
          ],
        ),
      ),
    );
  }

  openwhatsapp() async {
    var whatsapp =
        "6281329396847?text=Assalamualaikum+Dengan+Ambulan+PPPA%2C%0D%0A%0D%0ASaya+ingin+memesan+ambulan+dengan+data+-+data+berikut+%3A%0D%0A%0D%0A+Nama+%3A+%2A" +
            namaC.text +
            "%2A%0D%0A+No+KTP+%3A+%2A" +
            ktpC.text +
            "%2A%0D%0A+No+WA+%3A+%2A" +
            waC.text +
            "%2A%0D%0A+Alamat+%3A+%2A" +
            alamatC.text +
            "%2A%0D%0A%0D%0ATerima+Kasih%2C%0D%0A%0D%0AWassalamualaikum+WR.+WB.";
    var whatsappURlAndroid = "https://wa.me/$whatsapp";
    var whatappURLIos = "https://wa.me/$whatsapp";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURLIos)) {
        await launch(whatappURLIos, forceSafariVC: false);
      } else {
        await launch(whatsappURlAndroid);
      }
    } else {
      // android , web
      if (await canLaunch(whatsappURlAndroid)) {
        await launch(whatsappURlAndroid);
      } else {
        await launch(whatsappURlAndroid);
      }
    }
  }
}
