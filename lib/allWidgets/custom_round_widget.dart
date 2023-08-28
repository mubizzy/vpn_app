import 'package:flutter/material.dart';
import 'package:vpn_basic_project/main.dart';

class CustomWidget extends StatelessWidget {
  final String titleText;
  final String subTitleText;
  final Widget roundWidgetWithIcon;
  const CustomWidget(
      {super.key,
      required this.titleText,
      required this.subTitleText,
      required this.roundWidgetWithIcon});

  @override
  Widget build(BuildContext context) {
    sizeScreen = MediaQuery.of(context).size;
    return const SizedBox(
      width:  sizeScreen.width*.46,
      child: Column(
        children: [

          roundWidgetWithIcon,

          const SizedBox(
            height: 7,
          ),

          titleText,
          style:TextStyle(fontSize:16,fontweigth:FontWeight.w600),

           const SizedBox(
            height: 7,
          ),
 subTitleText,
          style:TextStyle(fontSize:16,fontweigth:FontWeight.w600),

        ],
      ),
    );
  }
}
