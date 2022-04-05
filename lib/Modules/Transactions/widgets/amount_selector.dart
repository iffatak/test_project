import 'package:flutter/material.dart';
import 'package:test_project/Utils/color_codes.dart';


class AmountSelector extends StatefulWidget {
  double min, max;
  int division;
  Function onChange;
  AmountSelector({required this.min, required this.max, required this.division, required this.onChange});

  @override
  State<AmountSelector> createState() => _AmountSelectorState();
}

class _AmountSelectorState extends State<AmountSelector> {
  double oneDivisionValue = 0;
  int selectedValue = -1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    oneDivisionValue = widget.max / widget.division;
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.maxFinite,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.horizontal,
          itemBuilder: (context,i)=>selectorCard("${(i+1)*oneDivisionValue}", i),
          separatorBuilder: (context,i)=>const SizedBox(width: 12,),
          itemCount: widget.division
      ),
    );
  }


  selectorCard(String value, int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedValue = index;
        });
        widget.onChange(double.parse(value));
      },
      child: Container(
        height: 50,
        width: 80,
        decoration: BoxDecoration(
          color: index==selectedValue?ColorCodes.BLACK_COLOR:ColorCodes.WHITE_COLOR,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: ColorCodes.BLACK_COLOR)
        ),
        child: Center(
          child: Text("\$ $value",style: TextStyle(
            color: index==selectedValue?
            ColorCodes.WHITE_COLOR:
            ColorCodes.BLACK_COLOR,
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),),
        ),
      ),
    );
  }
}
