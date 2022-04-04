import 'package:flutter/material.dart';
import 'package:test_project/Modules/Home/screens/dashboard_screen.dart';
import 'package:test_project/Utils/color_codes.dart';
import 'package:test_project/Utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String title = "F I N A N C E";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: Utils.getScreenHeight(context),
              width: Utils.getScreenWidth(context),
              color: ColorCodes.PINK_COLOR,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: Utils.getScreenHeight(context) * 0.5,
                width: Utils.getScreenWidth(context),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(180),
                        bottomRight: Radius.circular(180)),
                    color: ColorCodes.PEACH_COLOR),
              ),
            ),
            Positioned(
              top: 100,
              left: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                    title.length,
                    (i) => Text(
                          title[i],
                          style: const TextStyle(
                              fontSize: 34,
                              color: ColorCodes.WHITE_COLOR,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        )),
              ),
            ),
            buttonWidget()
          ],
        ),
      ),
    );
  }

  buttonWidget() {
    return Positioned(
      bottom: 30,
      right: 1,
      child: SizedBox(
        height: 65,
        width: 150,
        child: ElevatedButton(
            onPressed: () {
              Utils.pushScreen(context,const DashboardScreen());
            },
            style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: ColorCodes.WHITE_COLOR,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "Start",
                  style: TextStyle(
                      fontSize: 18,
                      color: ColorCodes.BLACK_COLOR,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 3),
                ),
                Icon(
                  Icons.arrow_forward_sharp,
                  color: ColorCodes.BLACK_COLOR,
                )
              ],
            )),
      ),
    );
  }
}
