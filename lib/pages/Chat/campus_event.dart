import 'package:cloud_firestore/cloud_firestore.dart';

class CampusEvent {
  final String eventName;
  final String eventDescription;

  CampusEvent({
    required this.eventName,
    required this.eventDescription,
  });

  factory CampusEvent.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return CampusEvent(
      eventName: data['eventName'] ?? '',
      eventDescription: data['eventDescription'] ?? '',
    );
  }
}
