
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
User? currentUser = auth.currentUser;

void initializeCurrentUser(){
  auth.authStateChanges().listen((User? user){
    if(user != null) {
      currentUser = user;
  }else{
    currentUser = null;
  }
});
}

// collections
const userCollection = "users";
// const artisianCollection = "artisians";
// const cartCollection = 'cart';
const chatsCollection = 'chats';
const eventsCollection = 'events';
const messageCollection = 'messages';

// const bookingsCollection = 'bookings';