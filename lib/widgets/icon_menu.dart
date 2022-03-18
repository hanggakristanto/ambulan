import 'package:flutter/material.dart';
// import 'package:grab/constant.dart';

class IconMenu extends StatelessWidget {
  const IconMenu({
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

        Center(child: Text(title)),
        // Container(
        //     child: Text(
        //   title,
        //   textAlign: TextAlign.center,
        //   overflow: TextOverflow.ellipsis,
        //   style: TextStyle(fontWeight: FontWeight.bold),
        // )),
        // Flexible(
        //   child: Column(
        //     children: [
        //       Text(
        //         title,
        //         style: TextStyle(
        //             fontFamily: "Roboto",
        //             color: Colors.black,
        //             fontSize: 10.0,
        //             fontWeight: FontWeight.bold),
        //         overflow: TextOverflow.clip,
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
