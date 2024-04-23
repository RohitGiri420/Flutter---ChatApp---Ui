import 'package:chatapp/Screens/SignUp%20Screen/SignUp.dart';
import 'package:chatapp/Widget/Color.dart';
import 'package:chatapp/Widget/UiHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: UiHelper.Background(
      1,
      Padding(
        padding: const EdgeInsets.all(58.0),
        child: Image.asset(
          'lib/asset/icon/chat.png',
        ),
      ),
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Let's contact with each other!",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: CustomColor.blue),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do tempor",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => SignUpScreen(),)),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Get Started",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: CustomColor.white),
                ),
                CircleAvatar(
                  backgroundColor: CustomColor.white,
                  child: Icon(
                    CupertinoIcons.arrow_right,
                    color: Colors.black54,
                    size: 25,
                  ),
                )
              ],
            ),
            height: 65,
            width: 190,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: CustomColor.red,
            ),
          ),
        ),
      ]),
          context
    ));
  }
}
