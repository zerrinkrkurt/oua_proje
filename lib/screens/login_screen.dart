import 'package:flutter/material.dart';

import 'flutter_screen.dart';
import 'unity_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15.0,

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(

                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/oua_logo.png",
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,

                ),

                GestureDetector(onTap:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>FlutterScreen()));
                  print("tıklandı");
                },
                  child: Image.asset("assets/flutter_logo.webp")


                ),
        const SizedBox(
          height: 70,
        ),
                GestureDetector(onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>UnityScreen()));
                },
                  child: Image.asset("assets/unity_logo.png")


                ),
              ],
            )
        )

    );
  }
}