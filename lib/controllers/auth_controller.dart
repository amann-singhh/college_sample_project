import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:baranwal_project/consts/consts.dart';

class AuthController extends GetxController {
  var isloading = false.obs;

  // text controllers
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Login method
  Future<UserCredential?> loginMethod({required BuildContext context}) async {
    UserCredential? userCredential;
    try {
      userCredential = await auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      // ignore: use_build_context_synchronously
      VxToast.show(context, msg: e.toString());
      // VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  // Signup method
  Future<UserCredential?> signupMethod({email, password, context}) async {
    UserCredential? userCredential;
    try {
      print("::::::::::::::::::::::creating user");
      userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print("::::::::::::::::::::::user created");
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  // Store user data after successful signup
  Future<void> storeUserData({name, password, email}) async {
  try {
    if (currentUser != null) {
      DocumentReference store =
          firestore.collection(userCollection).doc(currentUser!.uid);
      store.set({
        'fullName': name,
        'password': password,
        'email': email,
        'imageUrl': '',
        'id': currentUser!.uid,
        'bio': '',
        'bio_college': '',
        'collegeName': '',
        'nickName': '',
        'skills': '',
        'about': '',
        'experience': [], 
        'projects': [], 
        'education': [], 
      });
    } else {
      print('No user currently signed in.');
    }
  } catch (e) {
    print('Error in storing user data : ${e.toString()}');
  }
}


  signoutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}
