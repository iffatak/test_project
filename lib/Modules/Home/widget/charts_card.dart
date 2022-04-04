import 'package:flutter/material.dart';
import 'package:test_project/Utils/color_codes.dart';

class ChartsCard extends StatelessWidget {
  const ChartsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage("assets/bitcoinIcon.png"),
      ),
      title: const Text("BTC",style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 18,
        color: ColorCodes.WHITE_COLOR
      ),),
      subtitle: const Text("+ 1.6 %"),
      trailing: Column(
        children: const[
          Text("\$29,849.12",
            style: TextStyle(
            color: ColorCodes.WHITE_COLOR,
            fontSize: 17,
          ),),

          Text("276 BTC",
            style: TextStyle(
              color: ColorCodes.WHITE_COLOR,
              fontSize: 15,
            ),)
        ],
      ),
    );
  }
}
