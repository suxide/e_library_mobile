import 'package:e_library_mobile/appState.dart';
import 'package:e_library_mobile/screens/loginScreen.dart';
import 'package:e_library_mobile/screens/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoadingResource extends StatefulWidget {
  const LoadingResource({Key? key}) : super(key: key);

  @override
  _LoadingResourceState createState() => _LoadingResourceState();
}

class _LoadingResourceState extends State<LoadingResource> {
  @override
  Widget build(BuildContext context) {
    var user = context.watch<AppState>().user;
    if (user == null) {
      return LoginScreen();
    } else {
      return MainScreen(
        user: user,
      );
    }
  }
}
