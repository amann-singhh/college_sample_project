import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  var profileImgPath = ''.obs;

  var profileImageLink = '';

  var isloading = false.obs;

  // text field
  var nameController = TextEditingController();
  var oldpassController = TextEditingController();
  var newpassController = TextEditingController();
}