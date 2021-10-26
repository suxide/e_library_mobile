import 'dart:async';
import 'dart:ui';
import 'package:e_library_mobile/screens/homeScreen.dart';
import 'package:e_library_mobile/screens/mainScreen.dart';
import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khmer_fonts/khmer_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: Stack(
          children: [
            buildBg(),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.transparent,
                Colors.black87.withOpacity(0.6),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 350,
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ចូលគណនី',
                          style: TextStyle(
                            fontFamily: KhmerFonts.dangrek,
                            fontSize: 30,
                            color: Colors.white,
                            package: 'khmer_fonts',
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Form(
                          child: Column(
                        children: [
                          TextFormField(
                            style: TextStyle(color: ColorTheme.white),
                            decoration: InputDecoration(
                                labelText: 'គណនី',
                                labelStyle: TextStyle(
                                  fontFamily: KhmerFonts.kantumruy,
                                  fontSize: 15,
                                  color: Colors.white.withOpacity(0.7),
                                  package: 'khmer_fonts',
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white.withOpacity(0.7)))),
                          ),
                          TextFormField(
                            style: TextStyle(color: ColorTheme.white),
                            obscureText: true,
                            decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.visibility,
                                  color: ColorTheme.white.withOpacity(0.7),
                                ),
                                labelText: 'លេខកូដ',
                                labelStyle: TextStyle(
                                  fontFamily: KhmerFonts.kantumruy,
                                  fontSize: 15,
                                  color: Colors.white.withOpacity(0.7),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white.withOpacity(0.7)))),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          // buildLoginButton(context, false),
                          ElevatedButton(
                              style: ButtonStyle(
                                  overlayColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) => ColorTheme.bg),
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) => Colors.white)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => HomeScreen()));
                              },
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Text('Sign In',
                                      style: GoogleFonts.sourceSansPro(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                ),
                              )),

                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Forgot your password?',
                            style: GoogleFonts.openSans(color: Colors.white),
                          ),
                        ],
                      )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildBg() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter:
                  ColorFilter.mode(Colors.grey.shade200, BlendMode.darken),
              fit: BoxFit.cover,
              image: AssetImage('assets/images/login_bg2.jpg'))),
    );
  }

  // //form
  // Widget buildForm(BuildContext context) {
  //   return Container(
  //       height: 400,
  //       margin: EdgeInsets.symmetric(horizontal: 30),
  //       decoration: BoxDecoration(
  //           color: ColorTheme.bg,
  //           boxShadow: [],
  //           borderRadius: BorderRadius.circular(SizeData.audioBookRadius - 20)),
  //       child: ListView(
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
  //             child: ValueListenableBuilder(
  //               builder: (BuildContext context, bool _isSignUp, Widget? child) {
  //                 return Form(
  //                     autovalidateMode: AutovalidateMode.onUserInteraction,
  //                     child: Column(
  //                       children: [
  //                         //title
  //                         Text(
  //                           'login'.toUpperCase(),
  //                           style: GoogleFonts.montserrat(
  //                               color: ColorTheme.title,
  //                               fontSize: textThemeData(context)
  //                                   .textTheme
  //                                   .headline5!
  //                                   .fontSize,
  //                               fontWeight: FontWeight.bold),
  //                         ),
  //                         buildHeight(20),
  //                         //Username
  //                         buildTxtUsername(),
  //                         buildHeight(20),
  //                         //Password
  //                         buildTxtPwd(),
  //                         buildHeight(20),
  //                         //Confirm password
  //                         _isSignUp
  //                             ? Container(child: buildTxtConfirmPwd())
  //                             : Container(),
  //                         buildHeight(10),
  //                         //Login button
  //                         buildLoginButton(context, _isSignUp),
  //                         buildHeight(10),
  //                         buildSignUpOrSignIn(_isSignUp),
  //                         // Text(
  //                         //   'incorrect'.toUpperCase(),
  //                         //   style: GoogleFonts.montserrat(
  //                         //       color: ColorTheme.error, fontSize: 15),
  //                         // ),
  //                       ],
  //                     ));
  //               },
  //               valueListenable: _isSignUpVal,
  //             ),
  //           ),
  //         ],
  //       ));
  // }

  // Widget buildSignUpOrSignIn(bool _isSignUp) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Text(
  //         _isSignUp
  //             ? 'Already have account ?'.toUpperCase()
  //             : 'No account ?'.toUpperCase(),
  //         style: GoogleFonts.montserrat(
  //           color: ColorTheme.title.withOpacity(0.7),
  //           fontSize: 15,
  //         ),
  //       ),
  //       SizedBox(
  //         width: 10,
  //       ),
  //       TextButton(
  //         style: ButtonStyle(
  //             overlayColor: MaterialStateProperty.resolveWith(
  //                 (states) => ColorTheme.splashColor)),
  //         onPressed: () {
  //           _isSignUpVal.value = !_isSignUpVal.value;
  //           _isExpandedHeighFormVal.value = !_isExpandedHeighFormVal.value;
  //         },
  //         child: Text(
  //           _isSignUp ? 'Sign In'.toUpperCase() : 'Sign Up'.toUpperCase(),
  //           style: GoogleFonts.montserrat(
  //               color: ColorTheme.title.withOpacity(0.7),
  //               fontSize: 15,
  //               fontWeight: FontWeight.bold),
  //         ),
  //       )
  //     ],
  //   );
  // }

  // RoundedLoadingButton buildLoginButton(BuildContext context, bool _isSignUp) {
  //   return RoundedLoadingButton(
  //     height: 60,
  //     borderRadius: 7,
  //     controller: _loginButtonController,
  //     successColor: ColorTheme.title,
  //     color: ColorTheme.title,
  //     onPressed: () {
  //       Timer(Duration(milliseconds: 400), () {
  //         _loginButtonController.success();
  //         Navigator.push(
  //             context, MaterialPageRoute(builder: (context) => MainScreen()));
  //       });
  //     },
  //     child:
  //         Text(_isSignUp ? 'Sign Up'.toUpperCase() : 'Sign In'.toUpperCase()),
  //   );
  // }

  // buildHeight(double height) {
  //   return SizedBox(
  //     height: height,
  //   );
  // }

  // //Txtfield username
  // Widget buildTxtUsername() {
  //   return TextFormField(
  //     validator: (val) {
  //       if (val!.isEmpty) {
  //         return "\u26A0 Username or Email is required";
  //       }
  //     },
  //     controller: _usernameController,
  //     focusNode: _usernameFocus,
  //     style: GoogleFonts.montserrat(),
  //     decoration: InputDecoration(
  //         prefixIcon: Icon(
  //           IconDataTheme.user,
  //           color: ColorTheme.title.withOpacity(_isUsernameFocus ? 0.7 : 0.5),
  //         ),
  //         labelText: _isUsernameFocus
  //             ? _usernameController.text.isEmpty
  //                 ? 'Username/Email'
  //                 : 'Username/Email'
  //             : _usernameController.text.isEmpty
  //                 ? 'Username or Email'
  //                 : 'Username/Email',
  //         labelStyle: GoogleFonts.montserrat(
  //             color:
  //                 ColorTheme.title.withOpacity(_isUsernameFocus ? 0.7 : 0.5)),
  //         filled: true,
  //         fillColor: ColorTheme.splashColor.withOpacity(0.7),
  //         enabledBorder: OutlineInputBorder(
  //             borderSide: BorderSide(
  //                 color: ColorTheme.title.withOpacity(0.2), width: 1),
  //             borderRadius:
  //                 BorderRadius.circular(SizeData.audioBookRadius - 30)),
  //         focusedBorder: OutlineInputBorder(
  //             borderSide: BorderSide(
  //                 color: ColorTheme.title.withOpacity(0.5), width: 2),
  //             borderRadius:
  //                 BorderRadius.circular(SizeData.audioBookRadius - 30)),
  //         errorStyle: GoogleFonts.montserrat(color: ColorTheme.error),
  //         focusedErrorBorder: OutlineInputBorder(
  //             borderSide: BorderSide(color: ColorTheme.error, width: 2),
  //             borderRadius:
  //                 BorderRadius.circular(SizeData.audioBookRadius - 30)),
  //         errorBorder: OutlineInputBorder(
  //             borderSide: BorderSide(
  //                 color: ColorTheme.error.withOpacity(0.5), width: 1),
  //             borderRadius:
  //                 BorderRadius.circular(SizeData.audioBookRadius - 30))),
  //   );
  // }

  // //Txtfield pasword
  // Widget buildTxtPwd() {
  //   return ValueListenableBuilder(
  //     builder: (BuildContext context, bool _isPwdVisible, Widget? child) {
  //       return TextFormField(
  //         validator: (val) {
  //           if (val!.isEmpty) {
  //             return "\u26A0 Password is required";
  //           }
  //         },
  //         controller: _pwdController,
  //         focusNode: _pwdFocus,
  //         obscureText: _isPwdVisible ? false : true,
  //         style: GoogleFonts.montserrat(),
  //         decoration: InputDecoration(
  //             suffixIcon: ClipRRect(
  //               borderRadius: BorderRadius.circular(50),
  //               child: Material(
  //                 color: Colors.transparent,
  //                 child: IconButton(
  //                   icon: Icon(
  //                     _isPwdVisible ? IconDataTheme.eye_off : IconDataTheme.eye,
  //                     color: _isPwdFocus
  //                         ? ColorTheme.title.withOpacity(0.7)
  //                         : ColorTheme.title.withOpacity(0.5),
  //                   ),
  //                   onPressed: () {
  //                     _isPwdVisibleVal.value = !_isPwdVisibleVal.value;
  //                   },
  //                 ),
  //               ),
  //             ),
  //             prefixIcon: Icon(
  //               IconDataTheme.key,
  //               color: ColorTheme.title.withOpacity(_isPwdFocus ? 0.7 : 0.5),
  //             ),
  //             labelText: 'Password',
  //             labelStyle: GoogleFonts.montserrat(
  //                 color: ColorTheme.title.withOpacity(_isPwdFocus ? 0.7 : 0.5)),
  //             filled: true,
  //             fillColor: ColorTheme.splashColor.withOpacity(0.7),
  //             enabledBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(
  //                     color: ColorTheme.title.withOpacity(0.2), width: 1),
  //                 borderRadius:
  //                     BorderRadius.circular(SizeData.audioBookRadius - 30)),
  //             focusedBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(
  //                     color: ColorTheme.title.withOpacity(0.5), width: 2),
  //                 borderRadius:
  //                     BorderRadius.circular(SizeData.audioBookRadius - 30)),
  //             errorStyle: GoogleFonts.montserrat(color: ColorTheme.error),
  //             focusedErrorBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(color: ColorTheme.error, width: 2),
  //                 borderRadius:
  //                     BorderRadius.circular(SizeData.audioBookRadius - 30)),
  //             errorBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(
  //                     color: ColorTheme.error.withOpacity(0.5), width: 1),
  //                 borderRadius:
  //                     BorderRadius.circular(SizeData.audioBookRadius - 30))),
  //       );
  //     },
  //     valueListenable: _isPwdVisibleVal,
  //   );
  // }

  // //build confirm pwd
  // Widget buildTxtConfirmPwd() {
  //   return ValueListenableBuilder(
  //     builder:
  //         (BuildContext context, bool _isConfirmPwdVisible, Widget? child) {
  //       return TextFormField(
  //         validator: (val) {
  //           if (val!.isEmpty) {
  //             return "\u26A0 Password is required";
  //           }
  //         },
  //         controller: _confirmPwdController,
  //         focusNode: _confirmPwdFocus,
  //         obscureText: _isConfirmPwdVisible ? false : true,
  //         style: GoogleFonts.montserrat(),
  //         decoration: InputDecoration(
  //             suffixIcon: ClipRRect(
  //               borderRadius: BorderRadius.circular(50),
  //               child: Material(
  //                 color: Colors.transparent,
  //                 child: IconButton(
  //                   icon: Icon(
  //                     _isConfirmPwdVisible
  //                         ? IconDataTheme.eye_off
  //                         : IconDataTheme.eye,
  //                     color: _isPwdFocus
  //                         ? ColorTheme.title.withOpacity(0.7)
  //                         : ColorTheme.title.withOpacity(0.5),
  //                   ),
  //                   onPressed: () {
  //                     _isConfirmPwdVisibleVal.value =
  //                         !_isConfirmPwdVisibleVal.value;
  //                   },
  //                 ),
  //               ),
  //             ),
  //             prefixIcon: Icon(
  //               IconDataTheme.key,
  //               color: ColorTheme.title.withOpacity(_isPwdFocus ? 0.7 : 0.5),
  //             ),
  //             labelText: 'Confirm Password',
  //             labelStyle: GoogleFonts.montserrat(
  //                 color: ColorTheme.title.withOpacity(_isPwdFocus ? 0.7 : 0.5)),
  //             filled: true,
  //             fillColor: ColorTheme.splashColor.withOpacity(0.7),
  //             enabledBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(
  //                     color: ColorTheme.title.withOpacity(0.2), width: 1),
  //                 borderRadius:
  //                     BorderRadius.circular(SizeData.audioBookRadius - 30)),
  //             focusedBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(
  //                     color: ColorTheme.title.withOpacity(0.5), width: 2),
  //                 borderRadius:
  //                     BorderRadius.circular(SizeData.audioBookRadius - 30)),
  //             errorStyle: GoogleFonts.montserrat(color: ColorTheme.error),
  //             focusedErrorBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(color: ColorTheme.error, width: 2),
  //                 borderRadius:
  //                     BorderRadius.circular(SizeData.audioBookRadius - 30)),
  //             errorBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(
  //                     color: ColorTheme.error.withOpacity(0.5), width: 1),
  //                 borderRadius:
  //                     BorderRadius.circular(SizeData.audioBookRadius - 30))),
  //       );
  //     },
  //     valueListenable: _isConfirmPwdVisibleVal,
  //   );
  // }

}
