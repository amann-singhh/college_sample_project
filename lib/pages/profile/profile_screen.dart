import 'package:baranwal_project/consts/consts.dart';
import 'package:baranwal_project/controllers/profile_controller.dart';
import 'package:baranwal_project/services/firestore_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());
    return Scaffold(
      backgroundColor: whiteColor,
      body: StreamBuilder(
          stream: FirestoreServices.getUser(currentUser?.uid),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(redColor),
                ),
              );
            } else {
              var data = snapshot.data!.docs[0];

              return SafeArea(
                child: Column(
                  children: [
                    // Edit profile button
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            // controller.nameController.text = data['fullName'];

                            // Get.to(() => EditProfileScreen(data:data));
                          },
                          child: const Icon(Icons.edit, color: darkFontGrey),

                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                          Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        
                            data['imageUrl']=="" 
                            ?Image.asset(imgProfile2, width: 90, fit: BoxFit.cover)
                                .box
                                .roundedFull
                                .shadowLg
                                .clip(Clip.antiAlias)
                                .make()
                        
                            :Image.network(data['imageUrl'], width: 90, fit: BoxFit.cover)
                                .box
                                .roundedFull
                                .shadowLg
                                .clip(Clip.antiAlias)
                                .make(),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  "${data['fullName']}".text.fontFamily(bold).make(),
                                  "${data['nickName']}".text.fontFamily(regular).make(),
                                  "${data['bio_college']}".text.fontFamily(bold).make(),
                                ],
                              ),
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                  color: darkFontGrey,
                                ),
                              ),
                              onPressed: () 
                              // async 
                              {
                                // await Get.put(AuthController()).signoutMethod(context);
                                // Get.offAll(() => const LoginScreen());
                              },
                              child: const Text(
                                "Logout",
                                style: TextStyle(
                                  fontFamily: semibold,
                                  color: darkFontGrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      "${data['bio']}".text.fontFamily(semibold).make(),
                        ] 
                      ),
                      

                    ).box.roundedSM.outerShadowLg.padding(const EdgeInsets.all(10)).white.make(),
                    const SizedBox(height: 20),
                  
                ]
              ).box.padding(const EdgeInsets.all(10)).make(),
              );
            }
            
          }
    ));
  }

}