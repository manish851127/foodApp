import 'package:ecommerce_fontend/auth/login.dart';
import 'package:ecommerce_fontend/services/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Center(
         child: TextButton(onPressed: () {
          AuthProvider providerState=Provider.of<AuthProvider>(context,listen: false);
          providerState.signOut();
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));

    }, child:const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
            Text('Welcome Kumar',style: TextStyle(fontSize: 30,color: Colors.pink),),
            SizedBox(height: 20,),
        Text('Logout Here',style: TextStyle(fontSize: 15,color: Colors.blue,fontWeight: FontWeight.bold),),

      ],
    )));
  }
}