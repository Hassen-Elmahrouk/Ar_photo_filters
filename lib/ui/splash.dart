 import 'package:face_filters/ui/home.dart';
 import 'package:flutter/material.dart';
 import 'package:splashscreen/splashscreen.dart';

 class MySplash extends StatefulWidget {
   const MySplash({Key? key}) : super(key: key);

   @override
   _MySplashState createState() => _MySplashState();
 }

 class _MySplashState extends State<MySplash> {
  @override
   Widget build(BuildContext context) {
     return SplashScreen(
       image: Image.asset("assets/sc.jpg"),
       photoSize: 140,
      loaderColor: Colors.white,
       loadingText: const Text(
         "Loading",
         style: TextStyle(
           color: Colors.white,
           fontSize: 16,
          fontFamily: "Brand Bold",
         ),
       ),
       backgroundColor: Colors.yellowAccent,
      seconds: 5,
       navigateAfterSeconds: const HomePage(),
      /*title: const Text(
         "AR   Face   Filters",
         style: TextStyle(
           fontSize: 50,
           color: Colors.deepPurpleAccent,
           fontFamily: "Signatra",
         ),*/

     );
   }
}
