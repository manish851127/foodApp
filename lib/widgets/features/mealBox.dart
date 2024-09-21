import 'package:ecommerce_fontend/utils/colors.dart';
import 'package:flutter/material.dart';

class MealBox extends StatefulWidget {
  const MealBox({super.key});

  @override
  State<MealBox> createState() => _MealBoxState();
}

class _MealBoxState extends State<MealBox> {
  @override
  Widget build(BuildContext context) {
    return  Expanded (
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5.0,left: 3),
                    child: Container(
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient:const LinearGradient(colors: [
                          Color.fromARGB(255,204, 187, 219),
                              Color.fromARGB(255, 235, 234, 236),
                    
                        ],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft
                        )
                          ),
                      child: Column(
                              
                       children: [
                           Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15,top: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                               const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Text("Meal Boxes",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: MyColor.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                                ),),
                    
                                     Row(
                                    children: [
                                    Icon(Icons.person_4,size: 13,color: Color.fromARGB(255, 101, 22, 114),),
                                    SizedBox(width: 5,),
                                    Text("Min 10 Guests",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                      color: Color.fromARGB(255, 101, 25, 114),
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal
                                ),),
                                ],),
                                  ],
                                ),
                                 SizedBox(width: 10,),
                                 InkWell(
                                  onTap: (){},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(255, 99, 24, 175),
                                    
                                    ),
                                    child:const Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Icon(Icons.keyboard_double_arrow_right_rounded,color: Colors.white,size: 15,),
                                  
                                    ),
                                  ),
                                ),
                              
                              ],
                            ),
                          )),
                          Expanded(
                            flex: 7,
                            child:  SizedBox(width: double.infinity,child: Image.asset('assets/images/mealBox.png',fit: BoxFit.cover,alignment: Alignment.topCenter,))
                            ),
                         
                        ],
                      ),
                      
                    ),
                  ),
                  );
  }
}