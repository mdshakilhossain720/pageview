import 'package:flutter/material.dart';

import '../style/style.dart';
import 'set_password.dart';
class Login extends StatelessWidget {
  const Login({super.key});

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
              const SizedBox(height: 35,),
              const Text("Create Account",style: TextStyle(fontSize: 20,color:colorGreen),),
              const SizedBox(height: 6,),
              const Text("Sign up now to get started with an account",style: TextStyle(fontSize: 15,color: Colors.grey),),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: AppInputDecoration('yourmail@gmail.com'),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: AppInputDecoration('Name'),
              ),
              const SizedBox(height: 4,),


              Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(onPressed: (){}, child: const Text("Forget password",style: TextStyle(fontSize: 12,color: Colors.grey),))),

              Container(
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> const SetPassword()));

                }, style: AppButtonStyle(),child:SuccessButtonStyle('Sign in',)),
              ),
              const SizedBox(height: 25,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(color: Colors.grey,
                  height: 10,
                    thickness: 3,
                    //indent: 20,
                  ),
                  Text("Or Continue with",style: TextStyle(fontSize: 15,color: Colors.black87),),
                  Divider(color: Colors.grey,
                    height: 10,
                    thickness: 2,
                  ),

                ],
              ),
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    width: 70,
                    decoration: BoxDecoration(
                      //color: Colors.grey,
                      border: Border.all(color: Colors.grey),

                    ),
                    child: const Icon(Icons.facebook,size: 40,color: Colors.indigo,),
                  ),
                  const SizedBox(width: 23,),
                  Container(
                    height: 45,
                    width: 70,
                    decoration: BoxDecoration(
                      //color: Colors.grey,
                      border: Border.all(color: Colors.grey),

                    ),
                    child: const Icon(Icons.facebook,size: 40,color: Colors.indigo,),
                  ),

                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account ? ",style: TextStyle(fontSize: 14,color: Colors.grey),),
                  InkWell(
                    onTap: (){},
                      child: const Text("Sign Up",style: TextStyle(fontSize: 15,color: Colors.green),))
                ],
              )

            ],
          ),
        ),
      ),

    );
  }
}
