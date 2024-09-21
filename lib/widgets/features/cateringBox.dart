import 'package:ecommerce_fontend/utils/colors.dart';
import 'package:flutter/material.dart';

class CateringBox extends StatefulWidget {
  const CateringBox({super.key});

  @override
  State<CateringBox> createState() => _CateringBoxState();
}

class _CateringBoxState extends State<CateringBox> {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7.0),
                    child: Container(
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient:const LinearGradient(colors: [
                           Color.fromARGB(255,247, 175, 209),
                              Color.fromARGB(255, 233, 221, 227),
                    
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter
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
                                Text("Catering",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: MyColor.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                                ),),
                    
                                     Row(
                                    children: [
                                    Icon(Icons.person_4,size: 13,color: Color.fromARGB(255,  231, 4, 114),),
                                    SizedBox(width: 5,),
                                    Text("Min 120 Guests",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                      color: Color.fromARGB(255, 231, 4, 114),
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal
                                ),),
                                ],),
                                  ],
                                ),
                                const SizedBox(width: 10,),
                                 InkWell(
                                  onTap: (){},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(255, 231, 4, 114),
                                    
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
                            child:  SizedBox(width: double.infinity,child: Image.asset('assets/images/catering.png',fit: BoxFit.cover,alignment: Alignment.topLeft,))),
                    
                          
                    
                        ],
                      ),
                      
                    ),
                  ),);
  }
}