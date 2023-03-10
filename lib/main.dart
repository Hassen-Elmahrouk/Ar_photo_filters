import 'package:face_filters/ui/cam_masks_filters.dart';
import 'package:face_filters/ui/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AR Face Filters',

      home: MySplash(),
    );
  }
}
