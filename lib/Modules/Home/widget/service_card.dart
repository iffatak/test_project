import 'package:flutter/material.dart';
import 'package:test_project/Modules/Transactions/transfer_money_screen.dart';
import 'package:test_project/Utils/color_codes.dart';
import 'package:test_project/Utils/utils.dart';


class ServiceCard extends StatelessWidget {
  Widget icon;
  String label;
   ServiceCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Utils.pushScreen(context, const TransferMoneyScreen());
      },
      child: Container(
        height: 150,
        width: 110,
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ColorCodes.LITE_PURPLE_COLOR
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            icon,
            Text(label,style: const TextStyle(
              color: ColorCodes.WHITE_COLOR,
              fontSize: 17,
              fontWeight: FontWeight.w500
            ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
