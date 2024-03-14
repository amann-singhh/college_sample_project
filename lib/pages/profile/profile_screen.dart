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
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(redColor),
                  ),
                );
              } else {
                var data = snapshot.data!.docs[0];

                return SafeArea(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(children: [
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
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  data['imageUrl'] == ""
                                      ? Image.asset(imgProfile2,
                                              width: 90, fit: BoxFit.cover)
                                          .box
                                          .roundedFull
                                          .shadowLg
                                          .clip(Clip.antiAlias)
                                          .make()
                                      : Image.network(data['imageUrl'],
                                              width: 90, fit: BoxFit.cover)
                                          .box
                                          .roundedFull
                                          .shadowLg
                                          .clip(Clip.antiAlias)
                                          .make(),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        "${data['fullName']}"
                                            .text
                                            .fontFamily(bold)
                                            .make(),
                                        "${data['nickName']}"
                                            .text
                                            .fontFamily(regular)
                                            .make(),
                                        "${data['bio_college']}"
                                            .text
                                            .fontFamily(bold)
                                            .make(),
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
                              10.heightBox,
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: "${data['bio']}"
                                      .text
                                      .fontFamily(semibold)
                                      .make()),
                            ]),
                      )
                          .box
                          .roundedSM
                          .outerShadow2Xl
                          .padding(const EdgeInsets.all(10))
                          .white
                          .make(),
                      15.heightBox,

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: "About".text.fontFamily(bold).make(),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: GestureDetector(
                                      onTap: () {
                                        // controller.nameController.text = data['fullName'];
                                        // Get.to(() => EditProfileScreen(data:data));
                                      },
                                      child: const Icon(Icons.edit,
                                          color: darkFontGrey),
                                    ),
                                  ),
                                ],
                              ),
                              10.heightBox,
                              "${data['about']}"
                                  .text
                                  .fontFamily(regular)
                                  .make(),
                              10.heightBox,
                              "Skills".text.fontFamily(bold).make(),
                              10.heightBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                  data['skills'].length,
                                  (index) => "${data['skills'][index]}"
                                      .text
                                      .fontFamily(regular)
                                      .make(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                          .box
                          .roundedSM
                          .outerShadow2Xl
                          .padding(const EdgeInsets.all(10))
                          .white
                          .make(),
                      15.heightBox,

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.9, // Set width to 90% of screen width
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: "Experience"
                                        .text
                                        .fontFamily(bold)
                                        .make(),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: GestureDetector(
                                      onTap: () {
                                        // controller.nameController.text = data['fullName'];
                                        // Get.to(() => EditProfileScreen(data:data));
                                      },
                                      child: const Icon(Icons.edit,
                                          color: darkFontGrey),
                                    ),
                                  ),
                                ],
                              ),
                              10.heightBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                  data['experience']
                                      .length, // Assuming 'experience' is a list of experiences retrieved from Firebase
                                  (index) => SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      decoration: BoxDecoration(
                                        color: Colors.lightGreen.withOpacity(
                                            0.2), // Set the background color
                                        borderRadius: BorderRadius.circular(
                                            10), // Set the border radius for rounded corners
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          "${data['experience'][index]}"
                                              .text
                                              .fontFamily(regular)
                                              .make(), // Display title
                                          // "${data['experience'][index]['company']}".text.fontFamily(regular).make(), // Display company
                                          // "${data['experience'][index]['duration']}".text.fontFamily(regular).make(), // Display duration
                                          // "${data['experience'][index]['description']}".text.fontFamily(regular).make(), // Display description
                                          10.heightBox,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                          .box
                          .roundedSM
                          .outerShadow2Xl
                          .padding(const EdgeInsets.all(10))
                          .white
                          .make(),
                      15.heightBox,

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.9, // Set width to 90% of screen width
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child:
                                        "Projects".text.fontFamily(bold).make(),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: GestureDetector(
                                      onTap: () {
                                        // controller.nameController.text = data['fullName'];
                                        // Get.to(() => EditProfileScreen(data:data));
                                      },
                                      child: const Icon(Icons.edit,
                                          color: darkFontGrey),
                                    ),
                                  ),
                                ],
                              ),
                              10.heightBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                  data['projects']
                                      .length, // Assuming 'experience' is a list of experiences retrieved from Firebase
                                  (index) => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      "${data['projects'][index]}"
                                          .text
                                          .fontFamily(regular)
                                          .make(), // Display title
                                      // "${data['projects'][index]['description']}".text.fontFamily(regular).make(), // Display description
                                      10.heightBox,
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                          .box
                          .roundedSM
                          .outerShadow2Xl
                          .padding(const EdgeInsets.all(10))
                          .white
                          .make(),
                      15.heightBox,

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.9, // Set width to 90% of screen width
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: "Education"
                                        .text
                                        .fontFamily(bold)
                                        .make(),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: GestureDetector(
                                      onTap: () {
                                        // controller.nameController.text = data['fullName'];
                                        // Get.to(() => EditProfileScreen(data:data));
                                      },
                                      child: const Icon(Icons.edit,
                                          color: darkFontGrey),
                                    ),
                                  ),
                                ],
                              ),
                              10.heightBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                  data['education']
                                      .length, // Assuming 'experience' is a list of experiences retrieved from Firebase
                                  (index) => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      "${data['education'][index]}"
                                          .text
                                          .fontFamily(regular)
                                          .make(), // Display title
                                      // "${data['education'][index]['description']}".text.fontFamily(regular).make(), // Display description
                                      10.heightBox,
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                          .box
                          .roundedSM
                          .outerShadow2Xl
                          .padding(const EdgeInsets.all(10))
                          .white
                          .make(),
                    ]).box.padding(const EdgeInsets.all(10)).make(),
                  ),
                );
              }
            }));
  }
}
