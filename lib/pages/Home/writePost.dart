import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class writePost extends StatefulWidget {
  @override
  _writePostState createState() => _writePostState();
}

class _writePostState extends State<writePost> {
  String? _selectedType;
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Title(
                      color: Colors.black,
                      child: Text(
                        'Compose',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                    child: DropdownButton<String>(
                      hint: Text(
                        'Select Type',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      value: _selectedType,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedType = newValue!;
                          if (_selectedType == "Project") {
                            _textController.text = "Warning: Project-making may cause execssive enthusiasm, bursts of creativity, and unexpected fits of laughter.";
                          } else if (_selectedType == "Research") {
                            _textController.text = "In the land of research, every hypothesis is a wild guess, but that's half the fun!";
                          } else if (_selectedType == "Competition") {
                            _textController.text =
                                "Competetions: Where everyone's a winner until they check the scores! But get in the game! Even if you lose, you'll win some epic tales to tell.";
                          }
                           else if (_selectedType == "Hiring") {
                            _textController.text =
                                "Why hire more interns? Because they're the secret ingrident to our office happiness recipe.";
                          }
                        });
                      },
                      items: <String>[
                        'Project',
                        'Research',
                        'Competition',
                        'Hiring'
                      ].map((value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 2, 15, 10),
                  child: DottedBorder(
                    color: Colors.black,
                    strokeWidth: 2,
                    dashPattern: [8, 4],
                    borderType: BorderType.RRect,
                    radius: Radius.circular(10),
                    child: Container(
                      height: 700,
                      color: Colors.purple[100],
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                        child: TextField(
                          controller: _textController,
                          maxLines: null,
                          decoration: InputDecoration(
                            hintText: 'Inform, engage , inspire...💡',
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none,
                            filled: false,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 30, 20),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Post'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  textStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
