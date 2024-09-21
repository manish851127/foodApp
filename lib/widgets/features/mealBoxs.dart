import 'package:ecommerce_fontend/utils/colors.dart';
import 'package:flutter/material.dart';

class Mealboxs extends StatefulWidget {
  final Image img;
  final Color color;
  const Mealboxs({super.key, required this.img,required this.color});

  @override
  State<Mealboxs> createState() => _MealboxsState();
}

class _MealboxsState extends State<Mealboxs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: widget.color,
                    child: Stack(
                                 children: [
                                 ClipRRect(
                                borderRadius:const BorderRadius.all(Radius.circular(20)),
                                child: widget.img,
                              // child: Image.asset('assets/images/panjabiMenu1.png',
                              // height: 120,width: 190,
                              // fit: BoxFit.cover,
                              // )),
                                 ),
                              Positioned(
                                left: 5,
                                bottom: 13,
                                child: Container(
                                  width: 90,
                                  height: 25,
                                  color: MyColor.pupule,
                                  child: const Text(
                                  '3 Items Box',style: TextStyle(color: Colors.white,fontSize: 15,),
                                  ),),
                                
                               
                                  )
                              ],
                              
                            ),
                  ),
                ),
              );
  }
}