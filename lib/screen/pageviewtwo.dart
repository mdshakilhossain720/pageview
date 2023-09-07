

import 'package:flutter/material.dart';


import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../style/style.dart';


class Money extends StatefulWidget {
  const Money({super.key});

  @override
  State<Money> createState() => _MoneyState();
}

class _MoneyState extends State<Money> {
  //final _controler=PageController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/image/twopage.png",fit: BoxFit.cover,),
              const SizedBox(height: 20,),
              const Text("Make Payment",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,color:Colors.green,
              ),),
              const SizedBox(height: 15,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text("The are many payment options available for ease",style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,color: Colors.black87,
                ),),
              ),

              // const SizedBox(height: 25,),
              //
              // SmoothPageIndicator(
              //   controller: _controler,
              //   count:  3,
              //   effect:  const SlideEffect(
              //       spacing:  8.0,
              //       radius:  4.0,
              //       dotWidth:  24.0,
              //       dotHeight:  16.0,
              //       paintStyle:  PaintingStyle.fill,
              //       strokeWidth:  1.5,
              //       dotColor:  Colors.grey,
              //       activeDotColor:  Colors.indigo
              //   ),
              //
              // ),
            ],
          ),
        ),
      ),
    );
  }
}