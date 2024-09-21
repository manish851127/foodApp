
import 'package:ecommerce_fontend/utils/colors.dart';
import 'package:ecommerce_fontend/widgets/features/boxBanner.dart';
import 'package:ecommerce_fontend/widgets/features/deliveryBox.dart';
import 'package:ecommerce_fontend/widgets/features/mealBox.dart';
import 'package:ecommerce_fontend/widgets/features/cateringBox.dart';
import 'package:ecommerce_fontend/widgets/features/mealBoxs.dart';
import 'package:ecommerce_fontend/widgets/features/promoBanner.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const  Padding(
                padding: EdgeInsets.only(left: 20,top: 10),
                child: Text("Hi, Monica!",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: MyColor.pupule,
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),
                ),
              ),
              
            const  Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Current location",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: MyColor.grey,
                          fontSize: 15,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined,color: MyColor.pupule,size: 25,),
                              SizedBox(width: 3,),
                              Text("Hyderabad",
                              style: TextStyle(
                                color: MyColor.black,
                                fontSize: 18,
                                fontWeight: FontWeight.normal
                                  ),
                                ),
                                SizedBox(width: 3,),
                                Icon(Icons.keyboard_arrow_down_rounded,color: MyColor.grey,size: 22,),
                            ],
                          )
                
                      ],
                    ),
                    Column(
                         children: [
                        Icon(Icons.play_circle_outline_outlined, color: MyColor.pupule,),
                        SizedBox(height: 5,),
                        Text("How it works?",
                        style: TextStyle(
                          color: MyColor.black,
                          fontSize: 12,
                        ),
                        ),
                        
                      ],
                    )                    
                  ],
                ),
              ),
             
            const  Promobanner(),

            const  Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Text("Start Crafting",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: MyColor.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ),
                ),
              ),

            const Boxbanner(),

           const  Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20,),
              child: Row(children: [
               MealBox(),
               CateringBox(),
              ],),
              ),

              // list of menu
            const   Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Text("Choose Your Platter",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: MyColor.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.symmetric(
                  horizontal: 10,vertical: 0
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
               const   Expanded(
                    flex: 8,
                    child: Row(children: [
                    Text('Delivery Box',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: MyColor.pupule,
                  ),),
                  SizedBox(width: 5,),
                  Text('(',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: MyColor.grey,
                  ),),
                  SizedBox(width: 3,),
                  Icon(Icons.person_4,size: 15,color: MyColor.grey,),
                  SizedBox(width: 2,),
                  Text('Min 10 - Max 50 )',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: MyColor.grey,
                  ),),
                  ],)),
                  Expanded(flex: 2,child: TextButton(onPressed: (){},
                   child:const Text('More',
                   style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87
                   ),))),
                  
                ],
              ),
              ),
            const  Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
              child: Text('Best for small gatherings and house-parties',
              style: TextStyle(color: MyColor.grey,fontSize: 12,height: 1),),
              ),
              
              SizedBox(
                height: 375,
                    child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:const [
                 Deliverybox(),
                 Deliverybox(),
                Deliverybox(),
               ],
                ),
              ),
             const  SizedBox(height: 20,),
              Padding(
                padding:const EdgeInsets.symmetric(
                  horizontal: 10,vertical: 0
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                const  Expanded(
                    flex: 8,
                    child: Row(children: [
                    Text('Meal Box',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: MyColor.pupule,
                  ),),
                  SizedBox(width: 5,),
                  Text('(',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: MyColor.grey,
                  ),),
                  SizedBox(width: 3,),
                  Icon(Icons.person_4,size: 15,color: MyColor.grey,),
                  SizedBox(width: 2,),
                  Text('Min 10)',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: MyColor.grey,
                  ),),
                  ],)),
                  Expanded(flex: 2,child: TextButton(onPressed: (){},
                   child:const Text('More',
                   style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87
                   ),))),
                  
                ],
              ),
              ),
            const  Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
              child: Text('Best for small gatherings and house-parties',
              style: TextStyle(color: MyColor.grey,fontSize: 12,height: 1),),
              ),
              SizedBox(height: 15,),
              SizedBox(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Mealboxs(
                      img: 
                       Image.asset('assets/images/panjabiMenu3.png',
                          height: 130,width: 200,
                          fit: BoxFit.cover,
                          ),
                          color: const Color.fromARGB(255, 196, 233, 250),
                    ),
                    Mealboxs(
                      img: 
                       Image.asset('assets/images/panjabiMenu2.png',
                          height: 130,width: 190,
                          fit: BoxFit.cover,
                          ),
                          color: const Color.fromARGB(255, 253, 191, 211),

                    ),
                    Mealboxs(
                      img: 
                       Image.asset('assets/images/panjabiMenu1.png',
                          height: 130,width: 190,
                          fit: BoxFit.cover,
                          ),
                           color: const Color.fromARGB(255, 247, 202, 255),

                    ),
                    

                  ],
                ),
              ),
             const SizedBox(height: 50,),
    
            ],
          ),
        )
      ),
    );
  }
}