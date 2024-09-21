import 'package:ecommerce_fontend/pages/home.dart';
import 'package:ecommerce_fontend/pages/profile.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex=1;
   List<Widget> body= [
   const Profile(),
   const HomePage(),
   const Center(child: Text('No Order yet',style: TextStyle(fontSize: 30,color: Colors.pink),),),

  ];
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: body[_currentIndex],
      bottomNavigationBar: Stack(children: <Widget>[
          BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex){
          setState(() {
            _currentIndex=newIndex;
          });
        },
        items:  [
        const  BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile'),
            BottomNavigationBarItem(
            icon: Image.asset('assets/images/Logo.png',),
            label: ''),
            BottomNavigationBarItem(
            icon:Image.asset('assets/images/order.png',),
            label: '')
        ],
      
        ),
        

      ],)
       
      );
    
  }

}