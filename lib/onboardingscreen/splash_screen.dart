import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // SplashServices splashServices =SplashServices();
  @override
  void initState() {
    // TODO: implement initState

    // splashServices.login(context);
    // super.initState();




    }
  @override
  Widget build(BuildContext context) {
    final s=MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
          color:Colors.black,
          width: s.width,
          height: s.height,
          child: Image(



              image: AssetImage(

                  'images/splash1.png')),
        )],
      ),
    );
  }
}
