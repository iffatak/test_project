import 'package:flutter/material.dart';
import 'package:test_project/Utils/color_codes.dart';

class DebitCardWidget extends StatelessWidget {
  const DebitCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: ColorCodes.WHITE_COLOR
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Row(
            children:  [
              const Expanded(
                flex: 4,
                child:  Text("Current Balance",
                  style: TextStyle(
                  fontSize: 15,
                  color: ColorCodes.BLACK_COLOR,
                  fontWeight: FontWeight.w400
                ),),
              ),

              Expanded(child: Image.asset("assets/masterCard.png",height: 25,width: 25,))
            ],
          ),
         const SizedBox(height: 10,),
          const Text("\$5,750,20",
            style: TextStyle(
            color: ColorCodes.BLACK_COLOR,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
         const Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("5255 3214 8271 9082",style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorCodes.BLACK_COLOR
              ),),
              Text("07/12",style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: ColorCodes.BLACK_COLOR.withOpacity(0.6)
              ),)
            ],
          )
        ],
      ),
    );
  }
}
