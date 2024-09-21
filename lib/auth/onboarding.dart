
import 'package:ecommerce_fontend/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboadingPage extends StatefulWidget {

  const  OnboadingPage({super.key});

  @override
  State<OnboadingPage> createState() => _OnboadingPageState();
}

class _OnboadingPageState extends State<OnboadingPage> {
    final controller=PageController();
     bool isLastPage=false;

    @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  Widget buildPage({
    required Color color,
    required String urlImage,
    required String title,
    required String subTitle,
    })=> Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(urlImage,fit: BoxFit.cover,width: double.infinity,),
          //  const SizedBox(height: 64,),
            Text(
              title,
            textAlign: TextAlign.center,

              style: TextStyle(
                color: Colors.teal.shade700,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            //  const SizedBox(height: 24,),
            Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              
              ),
            ),
            
          ],
        ),
      ),
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          onPageChanged: (index){
           setState(() {
             isLastPage = index==2;
           }); 
            },
          children: [
             buildPage(
              color: Colors.green.shade100, 
              urlImage: "assets/images/frame1.png",
               title: "", 
               subTitle: ""
               ),
               buildPage(
              color: Colors.blue.shade100, 
               urlImage: "assets/images/frame2.png",
               title: "", 
               subTitle: ""
                  ),
               buildPage(
              color: Colors.yellow.shade100, 
              urlImage: "assets/images/frame3.png",
               title: "", 
               subTitle: ""
                   ),

        
          ],
        ),
      ),
      bottomSheet: isLastPage? 
      TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          backgroundColor: Colors.teal.shade700,
          foregroundColor: Colors.white,
          minimumSize: const Size.fromHeight(80),
        ),
        onPressed: () async{
          final pref= await SharedPreferences.getInstance();
          pref.setBool("showHome", true);

          Navigator.pushReplacement(context,
           MaterialPageRoute(builder: (context)=>const Login()));
        }, 
        child:const Text("Get Started",style: TextStyle(fontSize: 24),)
        )
      : Container(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
            child:const Text("SKIP") ,
            onPressed: (){
              return controller.jumpToPage(2);
            }, 
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller, 
                count: 3,
                effect: WormEffect(
                  spacing: 16,
                  dotColor: Colors.black26,
                  activeDotColor: Colors.teal.shade700,
                ),
                onDotClicked: (index) => controller.animateToPage(
                  index,
                  curve: Curves.easeIn,
                  duration:const Duration(milliseconds: 500)
                  ),
                ),
            ),
            TextButton(
            child:const Text("NEXT") ,
               onPressed: () => controller.nextPage(
                duration:const Duration(milliseconds: 500),
                 curve: Curves.easeInOut)
              ),

          ],
        ),
      ),
    );
  }
}