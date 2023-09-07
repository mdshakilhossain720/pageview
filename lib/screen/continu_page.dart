import 'package:flutter/material.dart';

import '../style/style.dart';
import 'sign_in.dart';
class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

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
              const SizedBox(height: 40,),
              const Text("Create Account",style: TextStyle(fontSize: 17,color:colorGreen),),
              const SizedBox(height: 6,),
              const Text("Sign up now to get started with an account",style: TextStyle(fontSize: 12,color: Colors.grey),),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: AppInputDecoration('Name'),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: AppInputDecoration('Name'),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: AppInputDecoration('yourmail@gmail.com'),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: AppInputDecoration('Phone'),
              ),
              const SizedBox(height: 20,),
              TextFormField(

                decoration: InputDecoration(

                  suffixIcon: const Icon(Icons.remove_red_eye_outlined),


                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color:colorGreen),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedBorder:  const OutlineInputBorder(
                    borderSide: BorderSide(color:colorGreen),

                  ),
                  labelText:'Pass',
                ),

               // decoration: AppInputDecoration('Pass'),
              ),
              const SizedBox(height: 20,),
              TextFormField(

                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined),

                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color:colorGreen),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedBorder:  const OutlineInputBorder(
                    borderSide: BorderSide(color:colorGreen),

                  ),
                  labelText:'. . . . .',
                ),
               // decoration: AppInputDecoration(''),
              ),
              const SizedBox(height: 20,),

              Container(
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> const Login()));

                }, style: AppButtonStyle(),child:SuccessButtonStyle('Continue',)),
              )

            ],
          ),
        ),
      ),

    );
  }
}
