import 'package:flutter/material.dart';
import 'package:test_project/Utils/color_codes.dart';


class ReceiverCard extends StatelessWidget {
  const ReceiverCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: ColorCodes.WHITE_COLOR,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: ColorCodes.BLACK_COLOR.withOpacity(0.5),width: 0.5)
      ),
      child: Row(
        children: [
          Expanded(child: Image.asset("assets/visa.png")),
          const Expanded(
            flex: 3,
              child: Text("5255 3213 8271 9082",style: TextStyle(
                color: ColorCodes.BLACK_COLOR,
                fontSize: 20,
                letterSpacing: 2,
                fontWeight: FontWeight.w500
              ),
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
