import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../style/style.dart';
class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:colorWhite,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu,color: Colors.grey,)),
        actions: [
          const CircleAvatar(
            backgroundColor: Colors.grey,

          ),
          const SizedBox(width: 15,),
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),
              Image.asset("assets/image/splash.jpeg",height: 100,width: 100,fit: BoxFit.cover,),
              const SizedBox(height: 55,),
              const Text("Enter OTP",style: TextStyle(fontSize: 25,color:colorGreen),),
              const SizedBox(height: 20,),
              const Text("We have sent the code to ",style: TextStyle(fontSize: 15,color: Colors.grey),),
              const SizedBox(height: 3,),
              const Text("01717 xxxxxx",style: TextStyle(fontSize: 15,color: Colors.grey),),
              // OTP
          PinCodeTextField(
            appContext: context,
            length: 4,
            obscureText: false,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 50,
              fieldWidth: 40,
              activeFillColor: Colors.grey,
              selectedColor: Colors.green
            ),
          ),

              const SizedBox(height: 30,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("The code will exprire in",style: TextStyle(fontSize: 15,color: Colors.grey),),
                  Text(" 55 ses",style: TextStyle(fontSize: 15,color: Colors.green),),
                ],
              ),
              const SizedBox(height: 15,),
              InkWell(
                  onTap: (){},
                  child: const Text("Resend OTP",style: TextStyle(fontSize: 15,color: Colors.grey),)),
            const SizedBox(height: 25,),

              ElevatedButton(onPressed: (){
               // Navigator.push(context, MaterialPageRoute(builder: (_)=> const OtpScreen()));

              }, style: AppButtonStyle(),child:SuccessButtonStyle('Verify',)),
            ],
          ),
        ),
      ),

    );
  }
}
