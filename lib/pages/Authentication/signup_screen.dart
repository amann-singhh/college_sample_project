import 'package:baranwal_project/consts/consts.dart';
import 'package:baranwal_project/controllers/auth_controller.dart';
import 'package:baranwal_project/pages/Home/home.dart';
import 'package:baranwal_project/widgets_common/applogo_widget.dart';
import 'package:baranwal_project/widgets_common/bg_widget.dart';
import 'package:baranwal_project/widgets_common/custom_textfield.dart';
import 'package:baranwal_project/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  var controller = Get.put(AuthController());

  // text controllers
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordRetypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Column(
        children: [
          (context.screenHeight * 0.1).heightBox,
          applogoWidget(),
          10.heightBox,
          "Joint the $appname".text.fontFamily(bold).white.size(18).make(),
          15.heightBox,
          Obx(
            ()=> Column(
              children: [
                customTextField(hint: nameHint, title: name, controller: nameController, isPass: false),
                customTextField(hint: emailHint, title: email, controller: emailController, isPass: false),
                customTextField(hint: passwordHint, title: password, controller: passwordController, isPass: true),
                customTextField(hint: passwordHint, title: retypePassword, controller: passwordRetypeController, isPass: true),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPass.text.make())),
                Row(
                  children: [
                    Checkbox(
                      checkColor: redColor,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      },
                    ),
                    10.heightBox,
                    Expanded(
                      child: RichText(
                          text: const TextSpan(
                        children: [
                          TextSpan(
                              text: "I agree to the ",
                              style: TextStyle(
                                fontFamily: regular,
                                color: fontGrey,
                              )),
                          TextSpan(
                              text: termAndCond,
                              style: TextStyle(
                                fontFamily: bold,
                                color: redColor,
                              )),
                          TextSpan(
                              text: " and ",
                              style: TextStyle(
                                fontFamily: regular,
                                color: fontGrey,
                              )),
                          TextSpan(
                              text: privacyPolicy,
                              style: TextStyle(
                                fontFamily: bold,
                                color: redColor,
                              )),
                        ],
                      )),
                    )
                  ],
                ),
                5.heightBox,
                controller.isloading.value? 
                const CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(redColor),) 
                : ourButton(
                        color: isCheck == true? lightBlue: lightGrey,
                        title: signup,
                        textColor: whiteColor,
                        onPress: () async {
                          if (isCheck != false) {
                            try {
                              await controller.signupMethod(
                                context: context,
                                email: emailController.text,
                                password: passwordController.text,
                              );
                              await controller.storeUserData(
                                  name: nameController.text, 
                                  email: emailController.text,
                                  password: passwordController.text,
                                );
                                VxToast.show(context, msg: loggedin);
                                Get.offAll(() => const Home());
                            } catch (e) {
                              auth.signOut();
                              print('Signup error: $e');
                              auth.signOut();
                              VxToast.show(context, msg: e.toString());
                              controller.isloading(false);
                            }
                          }
            
                        },)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                // wrapping into a gesture detector of velcity X
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                          text: alreadyHaveAccount,
                          style: TextStyle(
                            fontFamily: bold,
                            color: fontGrey,
                          )),
                      TextSpan(
                          text: login,
                          style: TextStyle(
                            fontFamily: bold,
                            color: redColor,
                          )),
                    ],
                  ),
                ).onTap(() {
                  Get.back();
                }),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          )
        ],
      )),
    );
  }
}
