import 'package:baranwal_project/consts/firebase_consts.dart';
import 'package:baranwal_project/controllers/homecontrollers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatsController extends GetxController {
  var chats = FirebaseFirestore.instance.collection(chatsCollection);
  var friendName = Get.arguments?[0];
  var friendId = Get.arguments?[1];
  var senderName = Get.find<HomeController>().username;
  var currentId = currentUser!.uid;
  var msgController = TextEditingController();
  dynamic chatDocId;
  var isLoading = false.obs;

  @override
  void onInit() {
    getChatId();
    super.onInit();
  }

  getChatId() async {

    isLoading(true);

    await chats
        .where('users', isEqualTo: {friendId: null, currentId: null})
        .limit(1)
        .get()
        .then((QuerySnapshot snapshot) {
      if (snapshot.docs.isNotEmpty) {
        chatDocId = snapshot.docs.single.id;
      } else {
        chats.add({
          'created_on': null,
          'last_msg': '',
          'users': {friendId: null, currentId: null},
          'toId': '',
          'fromId': '',
          'friend_name': friendName,
          'sender_name': senderName,
        }).then((value) {
          chatDocId = value.id;
        });
      }
    });
    isLoading(false);
  }
}