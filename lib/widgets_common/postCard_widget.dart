import 'package:baranwal_project/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostWidget extends StatefulWidget {
  final String profileImageUrl;
  final String name;
  final String role;
  final String postType;
  final String description;
  final String postImageUrl;

  const PostWidget({
    required this.profileImageUrl,
    required this.name,
    required this.role,
    required this.postType,
    required this.description,
    required this.postImageUrl,
  });

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool isHeartClicked = false;
  bool isSaveClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 7,
            color: Color(0x2F1D2429),
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(widget.profileImageUrl),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      color: Color(0xFF0F1113),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.role,
                    style: const TextStyle(
                      color: Color(0xFF0F1113),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              postTypeBadge(widget.postType),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            widget.description,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8),
          Image.network(
            widget.postImageUrl,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            fit: BoxFit.cover,
          ),
          const Divider(color: Color(0xFFE5E7EB), thickness: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isHeartClicked = !isHeartClicked;
                      });
                    },
                    icon: isHeartClicked
                        ? SvgPicture.asset(
                            'icons_up/Home Screen/Post/heart_c.svg',
                            color: redColor, // Change color to red when clicked
                          )
                        : SvgPicture.asset(
                            'icons_up/Home Screen/Post/heart.svg',
                            color: darkFontGrey, // Default color
                          ),
                  ).box.size(50, 50).make(),
                  IconButton(
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                    icon: SvgPicture.asset(
                        'icons_up/Home Screen/Post/comment.svg'),
                  ).box.size(50, 50).make(),
                  IconButton(
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                    icon:
                        SvgPicture.asset('icons_up/Home Screen/Post/share.svg'),
                  ).box.size(50, 50).make(),
                ],
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    isSaveClicked = !isSaveClicked; // Toggle save state
                  });
                  // Handle save button press
                },
                icon: isSaveClicked
                    ? const Icon(Icons.save)
                    : const Icon(Icons.save_outlined),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget postTypeBadge(String postType) {
    return Container(
      width: 60,
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF613FE5),
          width: 1,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      alignment: Alignment.center,
      child: Text(
        postType,
        style: const TextStyle(
          fontFamily: 'Plus Jakarta Sans',
          color: Color(0xFF613FE5),
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
