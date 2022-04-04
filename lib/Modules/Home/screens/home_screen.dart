import 'package:flutter/material.dart';
import 'package:test_project/Modules/Home/widget/charts_card.dart';
import 'package:test_project/Modules/Home/widget/header_card.dart';
import 'package:test_project/Modules/Home/widget/service_card.dart';
import 'package:test_project/Utils/color_codes.dart';
import 'package:test_project/Utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: Utils.getScreenHeight(context),
        width: Utils.getScreenWidth(context),
        child: Column(
          children: [
            const HeaderCard(),
            const SizedBox(
              height: 25,
            ),
            servicesRow(),
            const SizedBox(
              height: 20,
            ),
            servicesList(),
            const SizedBox(
              height: 25,
            ),
            chartsRow(),
            const SizedBox(
              height: 20,
            ),
            chartsList()
          ],
        ),
      ),
    );
  }

  servicesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Services",
          style: TextStyle(
              color: ColorCodes.WHITE_COLOR,
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
        Text(
          "See all",
          style: TextStyle(
              color: ColorCodes.WHITE_COLOR,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
  servicesList() {
    return SizedBox(
      height: 130,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ServiceCard(
              icon: const Icon(
                Icons.scanner,
                color: ColorCodes.WHITE_COLOR,
                size: 40,
              ),
              label: "Scan & Pay"),
          ServiceCard(
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorCodes.WHITE_COLOR,size: 40,
              ),
              label: "Transfer Money"),
          ServiceCard(
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
                color: ColorCodes.WHITE_COLOR,size: 40,
              ),
              label: "Receive Money")
        ],
      ),
    );
  }
  chartsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Charts",
          style: TextStyle(
              color: ColorCodes.WHITE_COLOR,
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
        Text(
          "See All",
          style: TextStyle(
              color: ColorCodes.WHITE_COLOR,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
  chartsList(){
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context,i)=>const ChartsCard(),
          separatorBuilder: (context,i)=>const Divider(color: ColorCodes.WHITE_COLOR,thickness: 0.1,),
          itemCount: 10),
    );
  }
}
