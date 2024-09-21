import 'package:ecommerce_fontend/utils/colors.dart';
import 'package:flutter/material.dart';

class Boxbanner extends StatefulWidget {
  const Boxbanner({super.key});

  @override
  State<Boxbanner> createState() => _BoxbannerState();
}

class _BoxbannerState extends State<Boxbanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:const LinearGradient(colors: [
                         Color.fromARGB(255, 243, 218, 172),
                            Color.fromARGB(255, 254, 244, 219),

                      ],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft
                      )
                        ),
                    child: Row(
          
                     children: [
                         Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            const  SizedBox(height: 12,),
                           const   Text("Delivery Box",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: MyColor.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                              ),),
                             const Row(
                                children: [
                                  Icon(Icons.person_4,size: 13,color: Color.fromARGB(255, 101, 22, 114),),
                                  SizedBox(width: 2,),
                                  Text("Min 10 - Max 120",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                    color: Color.fromARGB(255, 101, 25, 114),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal
                              ),),
                              ],),
                                const  SizedBox(height: 30,),
                              
                              GestureDetector(
                                onTap: (){},
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color.fromARGB(255, 216, 131, 2),
                                  
                                  ),
                                  child:const Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        Text("See All",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500
                                        ),
                                        ),
                                        SizedBox(width: 3,),
                                        Icon(Icons.keyboard_double_arrow_right_rounded,color: Colors.white,size: 15,)
                                      ],
                                    ),
                                
                                  ),
                                ),
                              ),
                            
                            ],
                          ),
                        )),
                        Expanded(
                          flex: 6,
                          child:  SizedBox(child: Image.asset('assets/images/MetalBox.png',fit: BoxFit.contain,alignment: Alignment.topRight,))),

                        

                      ],
                    ),
                    
                  ),
                );

  }
}