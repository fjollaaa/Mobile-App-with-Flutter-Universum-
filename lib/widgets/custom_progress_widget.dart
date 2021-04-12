import 'package:audio_play/core/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class CustomProgressWidget extends StatefulWidget {
  @override
  _CustomProgressWidgetState createState() => _CustomProgressWidgetState();
}

class _CustomProgressWidgetState extends State<CustomProgressWidget> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Container(
      height: 50,
      child:Stack(
        children:<Widget>[
        ]
      )
    );
  }

  Widget _mainProgress(double width) {
    return Container(



          height:5,
          width:width,
          decoration: BoxDecoration(
            color:AppColors.mainColor,
            border: Border.all(
              color:AppColors.styleColor.withAlpha(90),
              width:0.5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            boxShadow: [
            BoxShadow(
              color:AppColors.styleColor.withAlpha(90),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(1,-1),
            )
            ],

          ),
        );
  }
}
