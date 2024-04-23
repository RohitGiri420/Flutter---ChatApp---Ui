import 'package:chatapp/Widget/Color.dart';
import 'package:chatapp/Widget/UiHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.blue,
        iconTheme: IconThemeData(color: CustomColor.white),
      ),
      
      body: UiHelper.Background(6,
          Text("Create an Account!",style: TextStyle(color: CustomColor.white,fontSize: 24,fontWeight: FontWeight.w400),),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sign Up",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: CustomColor.blue),),
              SizedBox(height: 20,),
              UiHelper.CostumTextField(Icons.email_outlined,"Email"),
              UiHelper.CostumTextField(CupertinoIcons.eye,"Password"),
              UiHelper.CostumTextField(CupertinoIcons.eye,"Confirm Password"),
              SizedBox(height: 20,),
              InkWell(
                onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => SignUpScreen(),)),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    child: Center(
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: CustomColor.white),
                      ),
                    ),
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: CustomColor.red,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("or continue with",style: TextStyle(color: Colors.black54),),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 60,
                      width: 140,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: 2,),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Image.asset("lib/asset/icon/search.png"),
                          ),
                          Text("Google",style: TextStyle(color: Colors.black54),),
                          SizedBox(width: 2,)
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: CustomColor.white,
                        border: Border.all(width: 1,color: Colors.black26),
                        borderRadius: BorderRadius.circular(8)
                      ),
                    ),

                    Container(
                      height: 60,
                      width: 140,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: 2,),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Image.asset("lib/asset/icon/facebook.png"),
                          ),
                          Text("Facebook",style: TextStyle(color: Colors.black54),),
                          SizedBox(width: 2,)
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: CustomColor.white,
                          border: Border.all(width: 1,color: Colors.black26),
                          borderRadius: BorderRadius.circular(8)
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        context
      )
    );
  }
}
