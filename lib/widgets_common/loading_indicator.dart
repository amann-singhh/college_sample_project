import 'package:flutter/material.dart';
import 'package:baranwal_project/consts/colors.dart';

Widget loadingIndicator(){
  return const CircularProgressIndicator(
    valueColor: AlwaysStoppedAnimation(lightBlue),
  );
}