import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/material.dart';

class AudioBookDetailScreen extends StatefulWidget {
  const AudioBookDetailScreen({Key? key}) : super(key: key);

  @override
  _AudioBookDetailScreenState createState() => _AudioBookDetailScreenState();
}

class _AudioBookDetailScreenState extends State<AudioBookDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.bg,
      body: CustomScrollView(
        slivers: [],
      ),
    );
  }
}
