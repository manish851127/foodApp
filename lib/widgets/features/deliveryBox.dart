import 'package:ecommerce_fontend/utils/colors.dart';
import 'package:flutter/material.dart';

class Deliverybox extends StatefulWidget {
  const Deliverybox({super.key});

  @override
  State<Deliverybox> createState() => _DeliveryboxState();
}

class _DeliveryboxState extends State<Deliverybox> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.only(left: 10,top: 15),
              child: Card(
                color: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
          
                child: Container(
                  width: MediaQuery.of(context).size.width*0.85,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        children: [
                           ClipRRect(
                          borderRadius:const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)
                          ),
                        child: Image.asset('assets/images/panjabiMenu1.png',height: 150,width: MediaQuery.of(context).size.width*0.85,fit: BoxFit.cover,)),
                        Positioned(
                          left: 5,
                          top: 13,
                          child: Container(
                            width: 70,
                            height: 25,
                            color: MyColor.pupule,
                            child: const Text(
                            'Popular',style: TextStyle(color: Colors.white,fontSize: 15,),
                            ),)
                          
                         
                            )
                        ],
                        
                      ),
                    const  SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          
                          Image.asset('assets/images/universal_icon.png'),
                       const   SizedBox(width: 10,),
                        const  Text("Panjabi Special Menu",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: MyColor.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal
                                ),),
                        ],),
                        
                      ),
                      Padding(padding: EdgeInsets.only(left: 8,right: 8,bottom: 8,),
                         child: Container(
                          decoration:const BoxDecoration(
                            border: Border(top: BorderSide(width: 1,color: MyColor.grey))
                          ),
                         ),),
                      Padding(padding:const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            const  Text("6 Categories & 9 Items",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: MyColor.pupule,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                                ),),
                                InkWell(
                                  onTap: (){},
                                  child:const Text("Sell All",
                                                                  style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600
                                                                  ),),
                                )

                            ],
                          ),
                         ),

                         Padding(padding: EdgeInsets.only(left: 8,right: 8,bottom: 8),
                         child: Container(
                          decoration:const BoxDecoration(
                            border: Border(top: BorderSide(width: 1,color: MyColor.grey))
                          ),
                         ),),
                       const  Padding(padding: EdgeInsets.only(left: 8,right: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                   Text("Start at ",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal
                                ),),
                                 Text("₹299",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal
                                ),),
                                ],
                              ),
                             
                                Text("10-600",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                color: MyColor.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.normal
                                                                ),)

                            ],
                          ),
                         ),
                        Padding(padding: EdgeInsets.only(left: 8,right: 8,bottom: 0),
                        child: Row(
                          children: [
                             const  Text("₹219",
                                style: TextStyle(
                                  color: MyColor.pupule,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400
                                ),),
                              const  Text('/Person',style: TextStyle(color: Colors.black54,fontSize: 12),),
                              const  SizedBox(width: 10,),
                                Icon(Icons.arrow_downward,color: Colors.green.shade800,size: 18,),
                                Text('20%',style: TextStyle(fontSize: 18,color: Colors.green.shade800),)
                          ],
                        ),),
                      const  Padding(padding: EdgeInsets.only(left: 8,right: 8,bottom: 8),
                        child: Row(
                          children: [
                            Text('with Dynamic Price for ',style: TextStyle(fontSize: 12,color: MyColor.pupule),),
                           Text('100 Guest',style: TextStyle(fontSize: 14,color:Colors.black87),),

                          ],
                        ),
                        )
                    ],
                  ),
                ),
              ),);
  }
}