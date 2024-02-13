import 'package:baranwal_project/pages/College/collegeDetails.dart';
import 'package:flutter/material.dart';

class chatDetails extends StatefulWidget {

  @override
  _chatDetailsState createState() => _chatDetailsState();
}

class _chatDetailsState extends State<chatDetails> {
  int currentIndex = 0;
    final TextEditingController _controller = TextEditingController();
     final List<String> messages = ['Hi', 'Hello', 'How are you?']; // Sample messages

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              currentIndex == 0 ? Icons.toggle_off : Icons.toggle_on,
            color: currentIndex == 0 ? Colors.grey : Colors.blue,
              textDirection: TextDirection.rtl,
              size: 40,
            ),
            onPressed: () {
              setState(() {
                currentIndex = currentIndex == 0 ? 1 : 0;
              });
            },
          ),
        ],
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                               Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => collegeDetails(),
                    ),
                  );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                  'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("NMIMS Shirpur", style: TextStyle(color: Colors.black)),
                Text("23 Online", style: TextStyle(color: Colors.black, fontSize: 14)),
              ],
            ),
          ],
        ),
      ),
     body: Column(
        children: [
          Expanded(
            child: currentIndex == 0
                ? ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(messages[index]), // Sample message
                      );
                    },
                  )
                : ListView(
                  children: [
                                                                 Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 12),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              color: Color(0x25090F13),
                                              offset: Offset(0, 2),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 8, 12, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      Color(0xFF57636C),
                                                ),
                                                child: CheckboxListTile(
                                                  value: false,
                                                  onChanged:
                                                      (newValue) async {},
                                                  title: Text(
                                                    'Vipul',
                                                    style: TextStyle(
                                                      fontFamily: 'Outfit',
                                                      color: Color(0xFF14181B),
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  subtitle: Text(
                                                    'I want to learn how to make a task todo app.',
                                                    style: TextStyle(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF57636C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                  ),
                                                  tileColor: Colors.white,
                                                  activeColor:
                                                      Color(0xFF4B39EF),
                                                  dense: true,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                ),
                                              ),
                                              Divider(
                                                height: 0,
                                                thickness: 1,
                                                color: Color(0xFFF1F4F8),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
 Container(
                                                      width: 70,
                                                      height: 25,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Colors.purple[200],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(32),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Text(
                                                        'Project',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF14181B),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                    ),
                                                Row(
                                                  children: [
                                                    Container(
                                                          width: 70,
                                                          height: 25,
                                                          decoration: BoxDecoration(
                                                            color:
                                                                Colors.red[200],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(32),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: Text(
                                                            'Dismiss',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Plus Jakarta Sans',
                                                              color:
                                                                  Color(0xFF14181B),
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight.normal,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Container(
                                                      width: 70,
                                                      height: 25,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Colors.green[200],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(32),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Text(
                                                        'Accept',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF14181B),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  ],
                                                ),
                                                  
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                                                        Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 12),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              color: Color(0x25090F13),
                                              offset: Offset(0, 2),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 8, 12, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      Color(0xFF57636C),
                                                ),
                                                child: CheckboxListTile(
                                                  value: false,
                                                  onChanged:
                                                      (newValue) async {},
                                                  title: Text(
                                                    'Vipul',
                                                    style: TextStyle(
                                                      fontFamily: 'Outfit',
                                                      color: Color(0xFF14181B),
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  subtitle: Text(
                                                    'I want to learn how to make a task todo app.',
                                                    style: TextStyle(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF57636C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                  ),
                                                  tileColor: Colors.white,
                                                  activeColor:
                                                      Color(0xFF4B39EF),
                                                  dense: true,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                ),
                                              ),
                                              Divider(
                                                height: 0,
                                                thickness: 1,
                                                color: Color(0xFFF1F4F8),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
 Container(
                                                      width: 70,
                                                      height: 25,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Colors.purple[200],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(32),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Text(
                                                        'Project',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF14181B),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                    ),
                                                Row(
                                                  children: [
                                                    Container(
                                                          width: 70,
                                                          height: 25,
                                                          decoration: BoxDecoration(
                                                            color:
                                                                Colors.red[200],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(32),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: Text(
                                                            'Dismiss',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Plus Jakarta Sans',
                                                              color:
                                                                  Color(0xFF14181B),
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight.normal,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Container(
                                                      width: 70,
                                                      height: 25,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Colors.green[200],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(32),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Text(
                                                        'Accept',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF14181B),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  ],
                                                ),
                                                  
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                                                            Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 12),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              color: Color(0x25090F13),
                                              offset: Offset(0, 2),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 8, 12, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      Color(0xFF57636C),
                                                ),
                                                child: CheckboxListTile(
                                                  value: false,
                                                  onChanged:
                                                      (newValue) async {},
                                                  title: Text(
                                                    'Vipul',
                                                    style: TextStyle(
                                                      fontFamily: 'Outfit',
                                                      color: Color(0xFF14181B),
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  subtitle: Text(
                                                    'I want to learn how to make a task todo app.',
                                                    style: TextStyle(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF57636C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                  ),
                                                  tileColor: Colors.white,
                                                  activeColor:
                                                      Color(0xFF4B39EF),
                                                  dense: true,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                ),
                                              ),
                                              Divider(
                                                height: 0,
                                                thickness: 1,
                                                color: Color(0xFFF1F4F8),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
 Container(
                                                      width: 70,
                                                      height: 25,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Colors.purple[200],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(32),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Text(
                                                        'Project',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF14181B),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                    ),
                                                Row(
                                                  children: [
                                                    Container(
                                                          width: 70,
                                                          height: 25,
                                                          decoration: BoxDecoration(
                                                            color:
                                                                Colors.red[200],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(32),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: Text(
                                                            'Dismiss',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Plus Jakarta Sans',
                                                              color:
                                                                  Color(0xFF14181B),
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight.normal,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Container(
                                                      width: 70,
                                                      height: 25,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Colors.green[200],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(32),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Text(
                                                        'Accept',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF14181B),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  ],
                                                ),
                                                  
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                  ],
                )
          ),
          _buildMessageSender(),
        ],
      ),
    );
  }
    Widget _buildMessageSender() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Type a message',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send, color: Colors.blue),
            onPressed: () {
              if (_controller.text.isNotEmpty) {
                // Handle the message sending logic here.
                // For this example, just adding to the message list.
                setState(() {
                  messages.add(_controller.text);
                });
                _controller.clear();
              }
            },
          ),
        ],
      ),
    );
  }
}
