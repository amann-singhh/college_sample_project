import 'package:cloud_firestore/cloud_firestore.dart';

class ChatMessage {
  final String friendName;
  final String lastMessage;

  ChatMessage({
    required this.friendName,
    required this.lastMessage,
  });

  factory ChatMessage.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return ChatMessage(
      friendName: data['friend_name'] ?? '',
      lastMessage: data['last_msg'] ?? '',
    );
  }
}
