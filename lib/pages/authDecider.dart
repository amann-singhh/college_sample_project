
import 'package:baranwal_project/pages/Home/homePage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class authDecider extends StatefulWidget {

  @override
  _authDeciderState createState() =>
      _authDeciderState();
}

class _authDeciderState
    extends State<authDecider> {

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
        body: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Container(
            width: double.infinity,
            constraints: BoxConstraints(
              maxWidth: 670,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.network(
                          'https://images.unsplash.com/photo-1526554850534-7c78330d5f90?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2938&q=80',
                        ).image,
                      ),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0x00FFFFFF), Colors.white],
                          stops: [0, 1],
                          begin: AlignmentDirectional(0, -1),
                          end: AlignmentDirectional(0, 1),
                        ),
                      ),
                      alignment: AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 64, 24, 24),
                        child: Text(
                          'Join us & talk to anyone with confidence',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                                fontFamily: 'Urbanist',
                                color: Color(0xFF101213),
                                fontSize: 48,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 16),
                        child: ElevatedButton(
                        
                          onPressed: () {
                               Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.mail_outline_outlined,
                                color: Colors.white,
                                size: 24,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Text(
                                  'Sign up with Email',
                                  style: TextStyle(
                                        fontFamily: 'Urbanist',
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              )
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(15),
                            primary: Color(0xFF101213),
                            onPrimary: Color(0xFF101213),
                            onSurface: Color(0xFF101213),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        )
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                        child: Text(
                          'Or use social media',
                          style:
                              TextStyle(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF57636C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 16),
                        child: ElevatedButton(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.mail_outline_outlined,
                                color: Colors.black,
                                size: 24,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Text(
                                  'Sign up with Google',
                                  style: TextStyle(
                                        fontFamily: 'Urbanist',
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              )
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            // add border color
                            side: BorderSide(color: Colors.black, width: 1),
                            padding: EdgeInsets.all(15),
                            primary: Colors.white,
                            onPrimary: Colors.white,
                            onSurface: Colors.white,
                            elevation: 0,
                            
                            shape: RoundedRectangleBorder(
                              
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        )
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 16),
                        child: ElevatedButton(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.mail_outline_outlined,
                                color: Colors.white,
                                size: 24,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Text(
                                  'Sign up with Facebook',
                                  style: TextStyle(
                                        fontFamily: 'Urbanist',
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              )
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(15),
                            primary:  Color(0xFF4B39EF),
                            onPrimary:  Color(0xFF4B39EF),
                            onSurface:  Color(0xFF4B39EF),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        )
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 64),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Already have an account?',
                                style: TextStyle(),
                              ),
                              TextSpan(
                                text: ' Log In!',
                                style: TextStyle(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF101213),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                    ),
                              )
                            ],
                            style: TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF57636C),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
