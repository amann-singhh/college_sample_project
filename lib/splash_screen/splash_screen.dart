// ignore: unnecessary_import
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:roshanartisian/consts/consts.dart';
// import 'package:roshanartisian/views/auth_screen/login_screen.dart';
// import 'package:roshanartisian/views/home_screen/home.dart';
// import 'package:roshanartisian/widgets_common/applogo_widget.dart';
import 'package:baranwal_project/consts/consts.dart';
import 'package:baranwal_project/pages/Home/home.dart';
import 'package:baranwal_project/pages/Home/homePage.dart';
import 'package:baranwal_project/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // creating method to change screen
  changeScreen(){
    Future.delayed(const Duration(seconds: 2), (){
      // using getX
      Get.to(()=>const Home());

      // auth.authStateChanges().listen((User? user){
      //   if(user == null && mounted){
      //     Get.to(()=> const LoginScreen());
      //   }else{
      //     Get.to(()=>const Home());
      //   }
      // });
    });
  }
  @override
  void initState(){
    changeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      body: Center(
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft, child: Image.asset(icSplashBg,width: 300,)),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            const Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox, 
          ],
        ),
      ),
    );
  }
}
