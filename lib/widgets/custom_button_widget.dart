import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audio_play/core/const.dart';
import 'package:audio_play/models/music_model.dart';
import 'package:audio_play/pages/list_page.dart';
import 'package:audio_play/widgets/custom_button_widget.dart';

class CustomButtonWidget extends StatelessWidget {
  final double size;
  final Widget child;
  final String image;
  final double borderWidth;
  final bool isPlayed;
  final bool isActiv;

  final VoidCallback onTap;

  CustomButtonWidget({this.child, @required this.size, @required this.onTap, this.image, this.borderWidth = 5, this.isActiv = false, this.isPlayed =false, });
  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.all(
          Radius.circular(200)
      ),
      border: Border.all(
        width: borderWidth,
        color: isActiv ? AppColors.darkBlue : AppColors.mainColor,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 10,
          offset: Offset(5, 5),
          spreadRadius: 3,
        ),
        BoxShadow(
          color: Colors.white10,
          blurRadius: 3,
          offset: Offset(-5, -5),
          spreadRadius: 3,
        ),

      ],

    );

    if (image != null) {
      boxDecoration = boxDecoration.copyWith(image: DecorationImage(
        image: ExactAssetImage(image), fit: BoxFit.cover,),);
    }

    if(isActiv)
      {
        boxDecoration = boxDecoration.copyWith(
          gradient:
          RadialGradient(
            colors: [
              AppColors.lightBlue,
              AppColors.darkBlue,

            ],
          ),
        );
      }
    else {

      boxDecoration = boxDecoration.copyWith(
      gradient:
      RadialGradient(
        colors: [
          AppColors.mainColor,
          AppColors.mainColor,
          AppColors.mainColor,
          Colors.black26,
        ],
      ),
      );
    }


    return
      Container(
        width: size,
        height: size,
        decoration: boxDecoration,
        child: FlatButton(
         padding:EdgeInsets.all(0),
          onPressed: () {

           if(isPlayed){
            final player=AudioCache();
            player.play('GASHI - Safety 2020 (Audio) ft. Chris Brown, Afro B, DJ Snake.mp3');


            }

          },
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(200),
            )),
        child: child ?? Container(),
        ),
      );
  }
}
