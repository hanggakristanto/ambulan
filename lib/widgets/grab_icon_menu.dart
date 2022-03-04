import 'package:flutter/material.dart';
// import 'package:grab/constant.dart';

class GrabIconMenu extends StatelessWidget {
  const GrabIconMenu({
    Key? key,
    required this.title,
    required this.image,
    this.size = 60,
  }) : super(key: key);
//the parameter key can not have a value of null because of its type
  final String title;
  final String image;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image(
          height: size,
          image: AssetImage(image),
        ),
        const SizedBox(height: 5),
        Text(title),
      ],
    );
  }
}
