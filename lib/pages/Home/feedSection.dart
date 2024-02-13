import 'package:baranwal_project/consts/list.dart';
import 'package:baranwal_project/pages/Chat/chat_section.dart';
import 'package:baranwal_project/widgets_common/postCard_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../consts/consts.dart';

class feedSection extends StatefulWidget {
  @override
  _feedSectionState createState() => _feedSectionState();
}

class _feedSectionState extends State<feedSection> with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool isHeartClicked = false;
  bool isSaveClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: whiteColor,
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset(icAppLogo)
                .box
                .white
                .size(70, 70)
                .padding(const EdgeInsets.all(4))
                .rounded
                .make(),
          ),
          title: SizedBox(
            height: 40,
            child: TextFormField(
              autofocus: false,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Search',
                labelStyle: const TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  color: Color(0xFF606A85),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFFE5E7EB),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFF6F61EF),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                suffixIcon: const Icon(
                  Icons.search_rounded,
                  color: Color(0xFF606A85),
                  size: 22,
                ),
              ),
              style: const TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                color: Color(0xFF15161E),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              cursorColor: const Color(0xFF6F61EF),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(() => const ChatSection());
              },
              icon: const Icon(Icons.chat),
            ),
          ],
        ),
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          child: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 200,
                        autoPlay: true,
                        viewportFraction: 1,
                        autoPlayInterval: const Duration(seconds: 4),
                      ),
                      itemCount: sliderList.length,
                      itemBuilder: (context, index, realIndex) {
                        final img = sliderList[index];
                        return buildImage(img, index);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const PostWidget(
                  profileImageUrl: 'https://images.unsplash.com/photo-1510414842594-a61c69b5ae57?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGJlYWNofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                  name: 'Vipul',
                  role: 'Flutter Developer',
                  postType: 'Project',
                  description: 'Sample description for the post. Add your content here.',
                  postImageUrl: 'https://images.unsplash.com/photo-1510414842594-a61c69b5ae57?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGJlYWNofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      image: DecorationImage(
        image: NetworkImage(urlImage),
        fit: BoxFit.cover,
      ),
    ),
  );
}
