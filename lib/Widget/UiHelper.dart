import 'package:chatapp/Widget/Color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class UiHelper{



  static Background(int flex,Widget Upperwidget,Widget Lowerwidget,BuildContext context){
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

        Expanded(
          flex: flex,
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

  
  
  static CostumTextField(IconData icon,String label){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 30),
      child: TextField(
        style: TextStyle(color: Colors.black38),
        decoration: InputDecoration(
          label: Text(label,style: TextStyle(color: Colors.black38),),
          suffixIcon: Icon(icon,color: Colors.black38,),
         enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
           borderSide: BorderSide(color: Colors.grey,)
         ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey,)
          ),
        ),
      ),
    );
}
}