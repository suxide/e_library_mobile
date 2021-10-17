import 'dart:async';

import 'package:e_library_mobile/screens/homeScreen.dart';
import 'package:e_library_mobile/screens/mainScreen.dart';
import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  FocusNode _usernameFocus = FocusNode();
  FocusNode _pwdFocus = FocusNode();
  bool _isUsernameFocus = false;
  bool _isPwdFocus = false;
  RoundedLoadingButtonController _loginButtonController =
      RoundedLoadingButtonController();
  ValueNotifier<bool> _isVisibleVal = ValueNotifier(false);
  ValueNotifier<bool> _isEmptyUsernameVal = ValueNotifier(false);
  ValueNotifier<bool> _isEmptyPwd = ValueNotifier(false);

  @override
  void initState() {
    _usernameFocus.addListener(() {
      setState(() {
        _isUsernameFocus = _usernameFocus.hasFocus;
      });
    });
    _pwdFocus.addListener(() {
      setState(() {
        _isPwdFocus = _pwdFocus.hasFocus;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.loginBg,
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 50,
              left: -250,
              child: buildBg(),
            ),
            Align(
              alignment: Alignment.center,
              child: buildForm(context),
            ),
          ],
        ),
      ),
    );
  }

  //Bg
  Container buildBg() {
    return Container(
      width: 700,
      height: 350,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/login_bg.png'))),
    );
  }

  //form
  Container buildForm(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        height: 400,
        decoration: BoxDecoration(
            // color: ColorTheme.bg.withOpacity(0.97),
            color: ColorTheme.loginBg.withOpacity(0.9),
            boxShadow: [
              BoxShadow(
                  color: ColorTheme.title.withOpacity(0.2),
                  blurRadius: 10,
                  offset: Offset(10, 5),
                  spreadRadius: 2),
            ],
            borderRadius: BorderRadius.circular(SizeData.audioBookRadius - 20)),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      //title
                      Text(
                        'Login'.toUpperCase(),
                        style: GoogleFonts.montserrat(
                            color: ColorTheme.title.withOpacity(0.7),
                            fontSize: textThemeData(context)
                                .textTheme
                                .headline5!
                                .fontSize,
                            fontWeight: FontWeight.bold),
                      ),
                      buildHeight(20),
                      //Username
                      buildTxtUsername(),
                      buildHeight(20),
                      //Password
                      buildTxtPwd(),
                      buildHeight(50),
                      //Login button
                      RoundedLoadingButton(
                        controller: _loginButtonController,
                        successColor: ColorTheme.title,
                        color: ColorTheme.title,
                        onPressed: () {
                          Timer(Duration(seconds: 2), () {
                            _loginButtonController.success();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainScreen()));
                          });
                        },
                        child: Text('Login'),
                      ),
                    ],
                  )),
            ),
          ],
        ));
  }

  buildHeight(double height) {
    return SizedBox(
      height: height,
    );
  }

  //Txtfield username
  Widget buildTxtUsername() {
    return ValueListenableBuilder(
      builder: (BuildContext context, bool _isEmptyUsername, Widget? child) {
        return TextFormField(
          validator: (val) {
            if (val!.isEmpty) {
              _isEmptyUsernameVal.value = true;
              return "\u26A0 Username or Email is required";
            } else {
              _isEmptyUsernameVal.value = !_isEmptyUsernameVal.value;
            }
          },
          controller: _usernameController,
          focusNode: _usernameFocus,
          style: GoogleFonts.montserrat(),
          decoration: InputDecoration(
              prefixIcon: Icon(
                IconDataTheme.user,
                color:
                    ColorTheme.title.withOpacity(_isUsernameFocus ? 0.7 : 0.5),
              ),
              labelText:
                  _isUsernameFocus ? 'Username/Email' : 'Username or Email',
              labelStyle: GoogleFonts.montserrat(
                  color: ColorTheme.title
                      .withOpacity(_isUsernameFocus ? 0.7 : 0.5)),
              filled: true,
              fillColor: ColorTheme.splashColor.withOpacity(0.7),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorTheme.title.withOpacity(0.2), width: 1),
                  borderRadius:
                      BorderRadius.circular(SizeData.audioBookRadius - 30)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorTheme.title.withOpacity(0.5), width: 2),
                  borderRadius:
                      BorderRadius.circular(SizeData.audioBookRadius - 30)),
              errorStyle: GoogleFonts.montserrat(color: ColorTheme.error),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorTheme.error, width: 2),
                  borderRadius:
                      BorderRadius.circular(SizeData.audioBookRadius - 30)),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorTheme.error.withOpacity(0.5), width: 1),
                  borderRadius:
                      BorderRadius.circular(SizeData.audioBookRadius - 30))),
        );
      },
      valueListenable: _isEmptyUsernameVal,
    );
  }

  //Txtfield pasword
  Widget buildTxtPwd() {
    return ValueListenableBuilder(
      builder: (BuildContext context, bool _isVisible, Widget? child) {
        return TextFormField(
          validator: (val) {
            if (val!.isEmpty) {
              return "\u26A0 Password is required";
            }
          },
          controller: _pwdController,
          focusNode: _pwdFocus,
          obscureText: _isVisible ? false : true,
          style: GoogleFonts.montserrat(),
          decoration: InputDecoration(
              suffixIcon: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Material(
                  color: Colors.transparent,
                  child: IconButton(
                    icon: Icon(
                      _isVisible ? IconDataTheme.eye_off : IconDataTheme.eye,
                      color: _isPwdFocus
                          ? ColorTheme.title.withOpacity(0.7)
                          : ColorTheme.title.withOpacity(0.5),
                    ),
                    onPressed: () {
                      _isVisibleVal.value = !_isVisibleVal.value;
                    },
                  ),
                ),
              ),
              prefixIcon: Icon(
                IconDataTheme.key,
                color: ColorTheme.title.withOpacity(_isPwdFocus ? 0.7 : 0.5),
              ),
              labelText: 'Password',
              labelStyle: GoogleFonts.montserrat(
                  color: ColorTheme.title.withOpacity(_isPwdFocus ? 0.7 : 0.5)),
              filled: true,
              fillColor: ColorTheme.splashColor.withOpacity(0.7),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorTheme.title.withOpacity(0.2), width: 1),
                  borderRadius:
                      BorderRadius.circular(SizeData.audioBookRadius - 30)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorTheme.title.withOpacity(0.5), width: 2),
                  borderRadius:
                      BorderRadius.circular(SizeData.audioBookRadius - 30)),
              errorStyle: GoogleFonts.montserrat(color: ColorTheme.error),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorTheme.error, width: 2),
                  borderRadius:
                      BorderRadius.circular(SizeData.audioBookRadius - 30)),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorTheme.error.withOpacity(0.5), width: 1),
                  borderRadius:
                      BorderRadius.circular(SizeData.audioBookRadius - 30))),
        );
      },
      valueListenable: _isVisibleVal,
    );
  }
}
