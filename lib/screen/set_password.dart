import 'package:flutter/material.dart';

import '../style/style.dart';
import 'otp_verify.dart';
class SetPassword extends StatelessWidget {
  const SetPassword({super.key});

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
              SizedBox(height: 50,),
              Image.asset("assets/image/splash.jpeg",height: 100,width: 100,fit: BoxFit.cover,),
              const SizedBox(height: 33,),
              const Text("Set New Password",style: TextStyle(fontSize: 20,color:colorGreen),),
              const SizedBox(height: 20,),
              const Text("Enter your 8 digit alphanumeric password",style: TextStyle(fontSize: 15,color: Colors.grey),),
              const SizedBox(height: 28,),
              TextFormField(
                decoration: AppInputDecoration('New password'),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: AppInputDecoration('Confirm Password'),
              ),
              const SizedBox(height: 25),

              Container(
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> const OtpScreen()));

                }, style: AppButtonStyle(),child:SuccessButtonStyle('Save change',)),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
