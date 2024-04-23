import 'dart:ffi';

import 'package:chatapp/Widget/Color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class UiHelper{



  static Background(double height,Widget Upperwidget,Widget Lowerwidget){
    return Column(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: CustomColor.white,
                    border: Border.all(width: 0,color: CustomColor.white)
                ),
              ),
              Container(
                child: Center(child: Upperwidget),
                decoration: BoxDecoration(
                  border: Border.all(color: CustomColor.blue,width: 0),
                    color: CustomColor.blue,
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
              Container(
                decoration: BoxDecoration(
                    color: CustomColor.blue,
                    border: Border.all(width: 0,color: CustomColor.blue)
                ),
              ),
              Container(
                child: Center(child: Lowerwidget,),
                decoration: BoxDecoration(
                  border: Border.all(color: CustomColor.white, width: 0),
                    color: CustomColor.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.elliptical(170, 100)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}