import 'package:mobil_quran/widgets/more.dart';
import 'package:flutter/material.dart';
import 'package:mobil_quran/widgets/icon_menu.dart';
import 'package:mobil_quran/theme.dart';
// import 'package:grab/constant.dart';

class MoreIconMenu extends StatelessWidget {
  const MoreIconMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: <Widget>[
          // const SizedBox(height: 5),
          GestureDetector(
            child: IconMenu(
              image: "assets/images/feature/car.png",
              title: "More",
            ),
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(55))),
                builder: (context) => SingleChildScrollView(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).padding.bottom),
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(22),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.41,
                      color: cardColor,
                      child: More(),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     margin: EdgeInsets.symmetric(horizontal: 5),
  //     child: Column(
  //       children: <Widget>[
  //         const SizedBox(height: 5),
  //         GestureDetector(
  //           onTap: () {
  //             Navigator.pushNamed(context, '/detail');
  //           },
  //           child: Container(
  //             height: 60,
  //             width: 60,
  //             decoration: BoxDecoration(
  //                 color: Colors.grey[200],
  //                 borderRadius: BorderRadius.circular(30)),
  //             child: Icon(
  //               Icons.more_horiz,
  //               size: 40,
  //               color: Theme.of(context).primaryColor,
  //             ),
  //           ),
  //         ),
  //         const SizedBox(height: 8),
  //         Text("More"),
  //         // Spacer(),
  //       ],
  //     ),
  //   );
  // }

}
