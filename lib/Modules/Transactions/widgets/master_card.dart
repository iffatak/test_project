import 'package:flutter/material.dart';

import '../../../Utils/color_codes.dart';
import '../../../Utils/utils.dart';

class MasterCard extends StatelessWidget {
  const MasterCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cardHeight = 180;
    BorderRadiusGeometry radius = BorderRadius.circular(35);
    return Container(
      height: cardHeight,
      width: Utils.getScreenWidth(context),
      margin: const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(borderRadius: radius),
      child: Stack(
        children: [
          Container(
            height: cardHeight,
            width: Utils.getScreenWidth(context),
            decoration: BoxDecoration(
              borderRadius: radius,
              color: ColorCodes.PINK_COLOR,
            ),
          ),
          Container(
            height: cardHeight,
            width: Utils.getScreenWidth(context) * 0.7,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  bottomLeft: Radius.circular(35),
                  topRight: Radius.circular(120),
                  bottomRight: Radius.circular(120)),
              color: ColorCodes.PEACH_COLOR,
            ),
          ),
          bodyContent()
        ],
      ),
    );
  }

  bodyContent() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height:30,),
          const Text("5255 3214 8271 9082",style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: ColorCodes.WHITE_COLOR,
            letterSpacing: 2
          ),),
          const SizedBox(height:30,),

          Row(
            children: [
              Expanded(
                flex: 4,
                child: Text("07/12",style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: ColorCodes.WHITE_COLOR.withOpacity(0.6)
                ),),
              ),

              Expanded(child: Image.asset("assets/masterCard.png",height: 25,width: 25,))
            ],
          )
        ],
      ),
    );
  }

}
