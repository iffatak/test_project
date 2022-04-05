import 'package:flutter/material.dart';
import 'package:test_project/Modules/Home/widget/debit_card_widget.dart';
import 'package:test_project/Utils/color_codes.dart';
import 'package:test_project/Utils/utils.dart';
import 'package:carousel_slider/carousel_slider.dart';
class HeaderCard extends StatefulWidget {
  const HeaderCard({Key? key}) : super(key: key);

  @override
  State<HeaderCard> createState() => _HeaderCardState();
}

class _HeaderCardState extends State<HeaderCard> {
  int currentPos = 0;
  @override
  Widget build(BuildContext context) {
    double cardHeight = Utils.getScreenHeight(context) * 0.34;
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
        children: [
          heading(),
          const SizedBox(height: 15,),
          Expanded(
            child: CarouselSlider.builder(
              itemCount: 3,
              options: CarouselOptions(
                disableCenter: true,
                  aspectRatio: 2.5,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  onPageChanged: (index, val) {
                    setState(() {
                      currentPos = index;
                    });
                  }),
              itemBuilder: (context, index, h) {
                return const DebitCardWidget();
              },
            ),
          ),
          const SizedBox(height: 15,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPos == index
                        ? ColorCodes.WHITE_COLOR
                        :ColorCodes.PINK_COLOR,
                  ),
                );
              }))
        ],
      ),
    );
  }

  heading() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Portfolio",
          style: TextStyle(
              color: ColorCodes.WHITE_COLOR,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        Icon(
          Icons.format_align_right_sharp,
          color: ColorCodes.WHITE_COLOR,
        ),
      ],
    );
  }
}
