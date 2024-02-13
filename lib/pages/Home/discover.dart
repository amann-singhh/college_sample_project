import 'package:flutter/material.dart';

class discover extends StatefulWidget {
  @override
  _discoverState createState() => _discoverState();
}

class _discoverState extends State<discover> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 8),
                  child: TextFormField(
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Search Colleges',
                      labelStyle: TextStyle(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Color(0xFF606A85),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      hintStyle: TextStyle(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Color(0xFF606A85),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE5E7EB),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF6F61EF),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFF5963),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFF5963),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      suffixIcon: Icon(
                        Icons.search_rounded,
                        color: Color(0xFF606A85),
                      ),
                    ),
                    style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      color: Color(0xFF15161E),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    cursorColor: Color(0xFF6F61EF),
                  ),
                ),
               
                Divider(
                  thickness: 1,
                  color: Color(0xFFE5E7EB),
                ),
               
                ListView(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    8,
                    0,
                    44,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: 100,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                           
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ListTile(
                                        
                                        title: Text(
                                          'IIT Delhi',
                                          style: TextStyle(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Daily Chats',
                                          style: TextStyle(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF606A85),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        trailing: Icon(
                                          Icons.people,
                                          color: Color(0xFF606A85),
                                          size: 16,
                                        ),
                                      
                                      ),
                                                                            ListTile(
                                        
                                        title: Text(
                                          'IIT Delhi',
                                          style: TextStyle(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Daily Chats',
                                          style: TextStyle(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF606A85),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        trailing: Icon(
                                          Icons.people,
                                          color: Color(0xFF606A85),
                                          size: 16,
                                        ),
                                      
                                      ),
                                                                            ListTile(
                                        
                                        title: Text(
                                          'IIT Delhi',
                                          style: TextStyle(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Daily Chats',
                                          style: TextStyle(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF606A85),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        trailing: Icon(
                                          Icons.people,
                                          color: Color(0xFF606A85),
                                          size: 16,
                                        ),
                                      
                                      ),
                                                                            ListTile(
                                        
                                        title: Text(
                                          'IIT Delhi',
                                          style: TextStyle(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Daily Chats',
                                          style: TextStyle(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF606A85),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        trailing: Icon(
                                          Icons.people,
                                          color: Color(0xFF606A85),
                                          size: 16,
                                        ),
                                      
                                      )
                                      
                                     
                                    ]
                            ),
                              )
                            )
                          ],
                        ),
                      ),
                    ),
                   
              
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
