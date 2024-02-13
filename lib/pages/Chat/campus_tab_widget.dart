import 'package:baranwal_project/consts/consts.dart';
import 'package:baranwal_project/pages/Chat/campus_event.dart';
import 'package:baranwal_project/services/firestore_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CampusTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirestoreServices.getAllCampusEvents(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.data!.docs.isEmpty) {
          return "No Events yet!".text.color(darkFontGrey).makeCentered();
        } else {
          List<CampusEvent> events = snapshot.data!.docs
              .map((DocumentSnapshot doc) => CampusEvent.fromFirestore(doc))
              .toList();
          return ListView(
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 0, 4),
                      child: 'Events'.text.size(24).fontFamily('Outfit').make(),
                    ),
                    for (var event in events)
                      Card(
                        child: ListTile(
                          title: Text(
                            event.eventName,
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(event.eventDescription),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
