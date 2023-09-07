
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'page_view_one.dart';
import 'page_view_three.dart';
import 'pageviewtwo.dart';
class PageViewExample extends StatelessWidget {
  const PageViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(

      body: Column(
        children: [
          SizedBox(
            height: 620,
            child: PageView(
              //physics: Axis.horizontal,
              scrollDirection: Axis.horizontal,
             // scrollBehavior: Axis.horizontal,
              /// [PageView.scrollDirection] defaults to [Axis.horizontal].
              /// Use [Axis.vertical] to scroll vertically.
              controller: controller,
              children: const <Widget>[
                PageOne(),
                Money(),
                PageThree(),

                // Center(
                //   child: Text('Second Page'),
                // ),
                // Center(
                //   child: Text('Third Page'),
                // ),





              ],
            ),
          ),
          SizedBox(height: 70,),

          SmoothPageIndicator(
            controller: controller,
            count:  3,
            effect:  const ExpandingDotsEffect(
               // spacing:  8.0,
               // radius:  4.0,
                dotWidth:  20.0,
                dotHeight:  20.0,
               // paintStyle:  PaintingStyle.fill,
               // strokeWidth:  1.5,
                dotColor:  Colors.grey,
                activeDotColor:  Colors.green
            ),

          ),
        ],
      ),


    );
  }
}























// import 'package:dots_indicator/dots_indicator.dart';
// import 'package:flutter/material.dart';
// class PageView extends StatefulWidget {
//   const PageView({super.key, required PageController controller});
//
//   @override
//   State<PageView> createState() => _PageViewState();
// }
//
// class _PageViewState extends State<PageView> {
//   PageController controller=PageController();
//   int _curr=0;
//
//   List<Widget> pages = <Widget>[
//     Container(
//       color: Colors.blue,
//       child:Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset("assets/image/onepage.png",fit: BoxFit.cover,),
//           SizedBox(height: 30,),
//           Text("Choose Product",style: TextStyle(fontSize: 25,color: Colors.green),),
//           SizedBox(height: 20,),
//           Text("Find Your best product from our",style: TextStyle(fontSize: 15,color: Colors.grey),),
//           SizedBox(height: 2,),
//           Text("Find Your best product from our",style: TextStyle(fontSize: 15,color: Colors.grey),),
//           SizedBox(height: 70,),
//
//       DotsIndicator(
//         dotsCount: 1,
//       //dotsCount: pages.length,
//  // position: currentIndexPage,
//          decorator: DotsDecorator(
//            size: const Size.square(9.0),
//        activeSize: const Size(18.0, 9.0),
//        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
//        ),
//        ),
//
//
//         ],
//       )
//     ),
//     Container(
//       color: Colors.green,
//       child: Center(child: Text('Page 2')),
//     ),
//     Container(
//       color: Colors.red,
//       child: Center(child: Text('Page 3')),
//     ),
//   ];
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     final _controller=PageController();
//     return Scaffold(
//       appBar: AppBar(title: Text("page view"),),
//        // body: PageView(
//           //controller: _controller,
//         //  children: [
//
//          // ],
//         //)
//
//
//
//       // body: PageView(
//       //   children:
//       //   pages,
//       //   scrollDirection: Axis.horizontal,
//       //
//       //   // reverse: true,
//       //   // physics: BouncingScrollPhysics(),
//       //   controller: controller,
//       //   onPageChanged: (num){
//       //     setState(() {
//       //       _curr=num;
//       //     });
//       //   },
//       // ),
//
//
//
//       // body: PageView.builder(
//       //   itemCount: pages.length,
//       //   itemBuilder: (BuildContext context, int index) {
//       //     return pages[index];
//       //   },
//       // ),
//
//
//     );
//
//
//
//   }
// }
