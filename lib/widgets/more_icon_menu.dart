import 'package:ambulan/widgets/more.dart';
import 'package:flutter/material.dart';
import 'package:ambulan/widgets/icon_menu.dart';
import 'package:ambulan/theme.dart';
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
              // Scaffold.of(context).showBottomSheet<void>(
              //   (BuildContext context) {
              //     return ClipRRect(
              //       borderRadius: BorderRadius.vertical(
              //         top: Radius.circular(12),
              //       ),
              //       child: ClipRRect(
              //         child: Container(
              //           height: 310,
              //           color: dasarColor,
              //           child: More(),
              //         ),
              //       ),
              //     );
              //   },
              // );
              //
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).padding.bottom),
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(55),
                    ),
                    child: ClipRRect(
                      child: Container(
                        height: 310,
                        color: Colors.amber,
                        child: More(),
                      ),
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
