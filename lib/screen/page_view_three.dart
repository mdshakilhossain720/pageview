import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'continu_page.dart';
class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
 // final _controler=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor:Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60,),
                Image.asset("assets/image/threepage.png",fit: BoxFit.cover,),
                const SizedBox(height: 35,),
                const Text("Get Your Orders",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,color:Colors.green,
                ),),
                const SizedBox(height: 15,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Flexible(
                    child: Text("your products dispatch within 1-2 business day. Delivered at your doorstep",style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,color: Colors.black87,
                     // overflow: TextOverflow.ellipsis
                    ),),
                  ),
                ),

               // const SizedBox(height: 25,),

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

                const SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const CreateAccount()));

                  }, style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green
                  ),child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text("Get Started",style: TextStyle(fontSize: 10,color: Colors.white),),
                  )),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
