import 'package:flutter/material.dart';
import 'package:test_project/Modules/Transactions/widgets/amount_selector.dart';
import 'package:test_project/Modules/Transactions/widgets/master_card.dart';
import 'package:test_project/Modules/Transactions/widgets/receiver_card.dart';
import 'package:test_project/Utils/color_codes.dart';
import 'package:test_project/Utils/utils.dart';

class TransferMoneyScreen extends StatefulWidget {
  const TransferMoneyScreen({Key? key}) : super(key: key);

  @override
  State<TransferMoneyScreen> createState() => _TransferMoneyScreenState();
}

class _TransferMoneyScreenState extends State<TransferMoneyScreen> {
  double amountToTransfer = 0.0;
  double min = 0.0;
  double max = 400;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorCodes.DARK_PURPLE_COLOR,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: AppBar(
          backgroundColor: ColorCodes.DARK_PURPLE_COLOR,
          elevation: 0,
          iconTheme: const IconThemeData(color: ColorCodes.WHITE_COLOR),
          title: const Text(
            "Transfer Money",
            style: TextStyle(color: ColorCodes.WHITE_COLOR, fontSize: 20),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: Utils.getScreenHeight(context),
          width: Utils.getScreenWidth(context),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 15,
              ),
              bodyContent()
            ],
          ),
        ),
      ),
    );
  }

  headerWidget() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: const [
            Text(
              "SELECT YOUR BALANCE",
              style: TextStyle(
                  color: ColorCodes.WHITE_COLOR,
                  fontSize: 16,
                  letterSpacing: 2),
            ),
            SizedBox(
              height: 10,
            ),
            MasterCard()
          ],
        ),
      ),
    );
  }

  bodyContent() {
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: const BoxDecoration(
            color: ColorCodes.WHITE_COLOR,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(35), topLeft: Radius.circular(35))),
        child: ListView(
          children: [
            const SizedBox(
              height: 12,
            ),
            const Center(
              child: Text(
                "RECEIVER CARD NUMBER",
                style: TextStyle(
                  fontSize: 15,
                  color: ColorCodes.BLACK_COLOR,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const ReceiverCard(),
            const SizedBox(
              height: 25,
            ),
            const Center(
              child: Text(
                "AMOUNT TO TRANSFER",
                style: TextStyle(
                  fontSize: 15,
                  color: ColorCodes.BLACK_COLOR,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "\$ $amountToTransfer",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            sliderWidget(),
            const SizedBox(
              height: 15,
            ),
            AmountSelector(
                min: min,
                max: max,
                division: 8,
                onChange: (val) {
                  setState(() {
                    amountToTransfer = val;
                  });
                }),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 60,
              width: double.maxFinite,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: ColorCodes.PEACH_COLOR.withOpacity(0.8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () {},
                  child: Text(
                    "Transfer  \$$amountToTransfer",
                    style: const TextStyle(
                        color: ColorCodes.BLACK_COLOR,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  sliderWidget() {
    return Column(
      children: [
        Slider(
            value: amountToTransfer,
            min: min,
            max: max,
            divisions: 8,
            activeColor: ColorCodes.PINK_COLOR,
            thumbColor: ColorCodes.PINK_COLOR,
            onChanged: (val) {
              setState(() {
                amountToTransfer = val;
              });
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$ $min",
              style: TextStyle(color: ColorCodes.BLACK_COLOR.withOpacity(0.5)),
            ),
            Text("\$ $max",
                style:
                    TextStyle(color: ColorCodes.BLACK_COLOR.withOpacity(0.5)))
          ],
        )
      ],
    );
  }
}
