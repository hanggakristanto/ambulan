import 'package:ambulan/theme.dart';
import 'package:flutter/material.dart';

class BannerPage extends StatelessWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 14,
      ),
      child: Card(
        child: SizedBox(
          height: 160,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              "https://img.okezone.com/content/2019/08/26/338/2096952/jadi-perdebatan-dinkes-tangerang-jelaskan-perbedaan-mobil-ambulans-dan-jenazah-TqHMyzRzU6.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
        ),
        elevation: 8,
        shadowColor: Colors.black,
        margin: EdgeInsets.all(20),
      ),
    );
  }
}
