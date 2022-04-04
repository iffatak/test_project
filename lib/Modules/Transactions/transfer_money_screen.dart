import 'package:flutter/material.dart';
import 'package:test_project/Modules/Transactions/widgets/master_card.dart';
import 'package:test_project/Utils/color_codes.dart';
import 'package:test_project/Utils/utils.dart';


class TransferMoneyScreen extends StatefulWidget {
  const TransferMoneyScreen({Key? key}) : super(key: key);

  @override
  State<TransferMoneyScreen> createState() => _TransferMoneyScreenState();
}

class _TransferMoneyScreenState extends State<TransferMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorCodes.DARK_PURPLE_COLOR,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: AppBar(
          backgroundColor: ColorCodes.DARK_PURPLE_COLOR,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: ColorCodes.WHITE_COLOR
          ),
          title: const Text("Transfer Money",
            style: TextStyle(
              color: ColorCodes.WHITE_COLOR,
            fontSize: 20
          ),),

        ),
      ),

      body: SafeArea(
        child: Container(
          height: Utils.getScreenHeight(context),
          width: Utils.getScreenWidth(context),
          child: Column(
            children: [
              headerWidget(),
              SizedBox(height: 15,),
              Expanded(
                flex: 2,
                child: Container(
                  decoration:const BoxDecoration(
                    color: ColorCodes.WHITE_COLOR,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35),
                      topLeft: Radius.circular(35)
                    )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  headerWidget(){
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Column(
          children: const [
            Text("SELECT YOUR BALANCE",
              style: TextStyle(
              color: ColorCodes.WHITE_COLOR,
              fontSize: 16,
              letterSpacing: 2
            ),),
            SizedBox(height: 10,),
            MasterCard()
          ],
        ),
      ),
    );
  }
}
