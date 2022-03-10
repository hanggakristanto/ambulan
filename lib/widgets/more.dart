import 'package:flutter/material.dart';
import 'package:ambulan/widgets/icon_menu.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.red,
                  ),
                  height: 5,
                  width: 50,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
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
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/detaildua');
                },
                child: IconMenu(
                  image: "assets/images/feature/car.png",
                  title: "Car",
                ),
              ),
            ],
          ),
          // Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     mainAxisSize: MainAxisSize.min,
          //     children: <Widget>[
          //       SizedBox(
          //         height: 22,
          //       ),
          //       ElevatedButton(
          //           child: const Text('Tutup'),
          //           onPressed: () {
          //             Navigator.pop(context);
          //           })
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
