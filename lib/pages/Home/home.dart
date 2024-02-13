import 'package:baranwal_project/consts/consts.dart';
import 'package:baranwal_project/controllers/homecontrollers.dart';
import 'package:baranwal_project/pages/Home/discover.dart';
import 'package:baranwal_project/pages/Home/feedSection.dart';
import 'package:baranwal_project/pages/Home/questionStatus.dart';
import 'package:baranwal_project/pages/Home/writePost.dart';
import 'package:baranwal_project/pages/profile/profile_screen.dart';
import 'package:baranwal_project/widgets_common/exit_Dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Init home controller
    var controller = Get.put(HomeController());

    var navbarItem = [
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset('icons_up/Home Screen/home_c.svg', color: Colors.black,width: 24, height: 24),
    icon: SvgPicture.asset('icons_up/Home Screen/home.svg', color: Colors.black,width: 24, height: 24), // Use different image for active state
    label: home,
  ),
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset('icons_up/Home Screen/discover_c.svg', color: Colors.black,width: 24, height: 24),
    icon: SvgPicture.asset('icons_up/Home Screen/discover.svg', color: Colors.black,width: 24, height: 24), // Use different image for active state
    label: explore,
  ),
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset('icons_up/Home Screen/post_c.svg', color: Colors.black,width: 24, height: 24),
    icon: SvgPicture.asset('icons_up/Home Screen/post.svg', color: Colors.black,width: 24, height: 24), // Use different image for active state
    label: writeP,
  ),
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset('icons_up/Home Screen/ques_c.svg', color: Colors.black,width: 24, height: 24),
    icon: SvgPicture.asset('icons_up/Home Screen/ques.svg', color: Colors.black,width: 24, height: 24), // Use different image for active state
    label: quesStatus,
  ),
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset('icons_up/Home Screen/profile_c.svg', color: Colors.black,width: 24, height: 24),
    icon: SvgPicture.asset('icons_up/Home Screen/profile.svg', color: Colors.black,width: 24, height: 24), // Use different image for active state
    label: prof,
  ),
];
    var navBody = [
      feedSection(),
      discover(),
      writePost(),
      const questionStatus(),
      const ProfileScreen(),
    ];

    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        showDialog(context: context, builder: (context) => exitDialog(context));
        return false;
      },
      child: Scaffold(
        body: Column(
          children: [
            Obx(() => Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            // selectedItemColor: lightBlue,
            selectedLabelStyle: const TextStyle(fontFamily: semibold),
            type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            items: navbarItem,
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
          ),
        ),
      ),
    );
  }
}