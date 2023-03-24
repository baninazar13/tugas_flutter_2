import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double heightDevice = Get.height;
  double widthDevice = Get.width;

  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //getx flutter
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text("Home"),
      );
    }

    double heightBody =
        context.height - myAppBar().preferredSize.height - paddingTop;
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 100,
              maxWidth: 500,
              minHeight: 100,
              minWidth: 500,
            ),
            child: Container(
              height: 10000,
              color: Colors.red,
              child: Text(
                "1",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Row(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 150,
                  maxWidth: 166,
                  minHeight: 100,
                  minWidth: 166,
                ),
                child: Container(
                  height: 10000,
                  color: Color.fromARGB(255, 255, 7, 197),
                  child: Text(
                    "2",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 150,
                  maxWidth: 166,
                  minHeight: 100,
                  minWidth: 166,
                ),
                child: Container(
                  height: 10000,
                  color: Color.fromARGB(255, 82, 255, 122),
                  child: Text(
                    "3",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 150,
                  maxWidth: 166,
                  minHeight: 100,
                  minWidth: 166,
                ),
                child: Container(
                  height: 10000,
                  color: Color.fromARGB(255, 255, 215, 68),
                  child: Text(
                    "4",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}