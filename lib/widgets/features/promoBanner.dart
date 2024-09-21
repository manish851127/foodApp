import 'package:flutter/cupertino.dart';

class Promobanner extends StatefulWidget {
  const Promobanner({super.key});

  @override
  State<Promobanner> createState() => _PromobannerState();
}

class _PromobannerState extends State<Promobanner> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                    children: [
                   Padding(
                  padding:const EdgeInsets.only(top: 8,left: 8,bottom: 8),
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width*0.92,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        ),
                    child: Image.asset(
                      'assets/images/PromocodeBanner.png',
                      fit: BoxFit.fill,
                      ),
                    
                  ),
                ),
                 Padding(
                  padding:const EdgeInsets.all(8),
                  child: Container(
                    height: 150,
                   width: MediaQuery.of(context).size.width*0.92,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        ),
                    child: Image.asset(
                      'assets/images/PromocodeBanner.png',
                      width: double.infinity,
                      fit: BoxFit.fill,
                      ),
                    
                  ),
                ),
                  ],
                ),
              );
  }
}