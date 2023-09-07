import 'dart:async';

import 'package:flutter/material.dart';

import 'continu_page.dart';
import 'page_view.dart';
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>PageViewExample())),

        //         Navigator.pushReplacement(context,
        //     MaterialPageRoute(builder:
        //         (context) =>
        //             CreateAccount()
        //     )
        // )
    );


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                 Image.asset("assets/image/splash.jpeg",fit: BoxFit.cover,height: 200,width: 200,),
            ],
          ),
        ),
      ),
    );
  }
}
