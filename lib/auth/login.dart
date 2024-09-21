import 'package:ecommerce_fontend/auth/foreget_password_page.dart';
import 'package:ecommerce_fontend/auth/sign_up.dart';
import 'package:ecommerce_fontend/pages/bottom_navigation.dart';
import 'package:ecommerce_fontend/services/providers/provider_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController=TextEditingController();
    final passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
        final formKey=GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                 const Icon(Icons.emoji_emotions_outlined,size: 50,color: Colors.blue,),
                 const SizedBox(height: 10,),
                  Text('Hello Again',style: GoogleFonts.acme(fontSize: 50),),
                  Text('Welcome back, you\'ve been missed',style: GoogleFonts.acme(fontSize: 30),textAlign: TextAlign.center,),
                const  SizedBox(height: 40,),
                 TextFormField(
                    validator: (String? value) {
                     return (value != null && value == "") ? 'Please fill required field' : null;
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:const BorderSide(color: Colors.white)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:const BorderSide(color: Colors.deepPurple)
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: 'Email Address',
                    ),
                  ),
                 const SizedBox(height: 8,),
                  TextFormField(
                    validator: (String? value) {
                     return (value != null && value == "") ? 'Please fill required field' : null;
                    },
                    controller: passwordController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:const BorderSide(color: Colors.white)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:const BorderSide(color: Colors.deepPurple)
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: 'Password',
                    ),
                  ),
                 const SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: () { Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return const ForegetPasswordPage();
                              }));},
                          child:const Text('Forget Password?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent
                            ),)),
                    ],
                  ),
                const  SizedBox(height: 8,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue, // Text color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded corners
                          ),
                          padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                        ),
                        onPressed: (){
                           if(formKey.currentState!.validate()){
                          loginUser(emailController.text,passwordController.text);

                           }

                        },
                        child:const Text('Sign in')
                    ),
                  ),
                 const SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const Text('Not a membet? '),
                     const SizedBox(width: 5,),
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                          },
                          child:const Text('Register Now',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),))
                    ],
                  )
              ],),
            ),
          ),),
      ),
    );
  }
  
  Future<void> loginUser(String email, String password) async {
    ProviderState providerState=Provider.of<ProviderState>(context,listen: false);
    try{
      if(await providerState.signInUserAccount(email, password)){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNavigation()));

      }
    }catch(e){
      debugPrint(e.toString());
    }

  }
  
}