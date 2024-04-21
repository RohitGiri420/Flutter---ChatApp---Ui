import 'dart:ffi';

import 'package:flutter/cupertino.dart';

const Primarycolor = Color(0xff2d293f);
const Secondarycolor = Color(0xffececeb);

class UiHelper{



  static Background(double height,Widget Upperwidget,Widget Lowerwidget){
    return Column(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(color: Secondarycolor,
              ),
              Container(
                child: Center(child: Upperwidget),
                decoration: BoxDecoration(
                    color: Primarycolor,
                    borderRadius: BorderRadius.only(bottomRight: Radius.elliptical(170, 100))
                ),
              ),
            ],
          ),
        ),

        Container(
          height: height,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(color: Primarycolor,
              ),
              Container(
                child: Center(child: Lowerwidget,),
                decoration: BoxDecoration(
                    color: Secondarycolor,
                    borderRadius: BorderRadius.only(topLeft: Radius.elliptical(170, 100))
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}