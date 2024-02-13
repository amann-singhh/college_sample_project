import 'package:baranwal_project/pages/Chat/campus_tab_widget.dart';
import 'package:baranwal_project/pages/Chat/chatroom_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(
            "Logo",
            style: GoogleFonts.laila(
              fontWeight: FontWeight.w500,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Chatroom'),
              Tab(text: 'Campus'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Chatroom tab
            ChatRoomTab(),
            // Campus tab
            CampusTab(),
          ],
        ),
      ),
    );
  }
}
