import 'dart:convert';
import 'package:e_library_mobile/appState.dart';
import 'package:e_library_mobile/loading_resource.dart';
import 'package:e_library_mobile/models/user_model.dart';
import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:transition/transition.dart';

class UserProfileScreen extends StatefulWidget {
  final UserModel user;
  const UserProfileScreen({Key? key, required this.user}) : super(key: key);

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  var body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.bg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorTheme.white,
        leading: IconButton(
          icon: Icon(
            FlutterRemix.logout_circle_line,
            color: ColorTheme.black,
          ),
          onPressed: () {
            context.read<AppState>().user = null;
            Navigator.of(context).pushReplacement(Transition(
                child: LoadingResource(),
                transitionEffect: TransitionEffect.BOTTOM_TO_TOP));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.close, color: ColorTheme.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            // TextButton(
            //     onPressed: () {
            //       String uri = "https://www.schoolmgm.online";
            //       String studentLogin = "/api/v1/school/students/student_token";
            //       http
            //           .get(Uri.parse(
            //               '$uri$studentLogin?s_token=PP_EIS0030&pwd=0030'))
            //           .then((http.Response response) {
            //         print(response.body);
            //         body = response.body;
            //       });
            //     },
            //     child: Text("Show info")),
            Container(
              height: 230,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: ColorTheme.title.withOpacity(0.5),
                        blurRadius: 20,
                        spreadRadius: 5,
                        offset: Offset(1, 3))
                  ],
                  color: ColorTheme.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                children: [
                  CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: ColorTheme.title,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.user.fullKhName,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.user.fullEnName,
                          style: GoogleFonts.montserrat(fontSize: 15)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.resolveWith(
                                      (states) => RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) => ColorTheme.bottomBar)),
                              onPressed: () {},
                              child: Text(
                                'Edit profile',
                                style: GoogleFonts.montserrat(fontSize: 15),
                              ))),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Text('content'.toUpperCase(),
                  style: GoogleFonts.montserrat(fontSize: 17)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: ColorTheme.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Icon(
                            IconDataTheme.unFavorite,
                            color: ColorTheme.title.withOpacity(0.8),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Favorite',
                              style: GoogleFonts.montserrat(fontSize: 17)),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Icon(
                            IconDataTheme.download,
                            color: ColorTheme.title.withOpacity(0.8),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Downloads',
                              style: GoogleFonts.montserrat(fontSize: 17)),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text('preferences'.toUpperCase(),
                  style: GoogleFonts.montserrat(fontSize: 17)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: ColorTheme.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Icon(
                            FlutterRemix.earth_line,
                            color: ColorTheme.title.withOpacity(0.8),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Language',
                              style: GoogleFonts.montserrat(fontSize: 17)),
                          Spacer(),
                          Text('English',
                              style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  color: ColorTheme.title.withOpacity(0.7))),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Icon(
                            FlutterRemix.moon_clear_line,
                            color: ColorTheme.title.withOpacity(0.8),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Dark mode',
                              style: GoogleFonts.montserrat(fontSize: 17)),
                          Spacer(),
                          FlutterSwitch(
                              height: 27,
                              width: 50,
                              activeColor: ColorTheme.title,
                              value: true,
                              onToggle: (val) {}),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Icon(
                            FlutterRemix.headphone_fill,
                            color: ColorTheme.title.withOpacity(0.8),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Audio in background',
                              style: GoogleFonts.montserrat(fontSize: 17)),
                          Spacer(),
                          FlutterSwitch(
                              height: 27,
                              width: 50,
                              activeColor: ColorTheme.title,
                              value: false,
                              onToggle: (val) {}),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
