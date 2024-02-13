import 'package:baranwal_project/consts/consts.dart';
import 'package:baranwal_project/pages/Chat/chat_message.dart';
import 'package:baranwal_project/services/firestore_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatRoomTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirestoreServices.getAllMessages(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.data!.docs.isEmpty) {
          return "No Messages yet!".text.color(darkFontGrey).makeCentered();
        } else {
          List<ChatMessage> messages = snapshot.data!.docs
              .map((DocumentSnapshot doc) => ChatMessage.fromFirestore(doc))
              .toList();
          return ListView.builder(
            itemCount: messages.length,
            itemBuilder: (BuildContext context, int index) {
              ChatMessage message = messages[index];
              return Card(
                child: ListTile(
                  onTap: () {
                    // Navigate to chat screen
                    // Get.to(
                    //   () => ChatScreen(
                    //     friendName: message.friendName,
                    //     toId: message.toId,
                    //   ),
                    // );
                  },
                  leading: const CircleAvatar(
                    backgroundColor: redColor,
                    child: Icon(Icons.person, color: whiteColor),
                  ),
                  title: Text(
                    message.friendName,
                    style: const TextStyle(fontFamily: semibold, color: darkFontGrey),
                  ),
                  subtitle: Text(
                    message.lastMessage,
                    style: const TextStyle(color: darkFontGrey),
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
