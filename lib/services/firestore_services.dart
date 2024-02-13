import 'package:baranwal_project/consts/firebase_consts.dart';

class FirestoreServices {
  // Get user data
  static getUser(uid) {
    return firestore
        .collection(userCollection)
        .where('id', isEqualTo: uid)
        .snapshots();
  }

   // get all chat messages
  static getChatMessages(docId){
    return firestore
    .collection(chatsCollection)
    .doc(docId)
    .collection(messageCollection)
    .orderBy('created_on', descending: false)
    .snapshots();
    }

  // get all messages
  static getAllMessages(){
  return firestore.collection(chatsCollection).where('fromId', isEqualTo: "n4xBVuoNkQMHs1vmDlxsD1tXBNl1").snapshots();
  }
  static getAllCampusEvents(){
  return firestore.collection(eventsCollection).snapshots();
  }
}