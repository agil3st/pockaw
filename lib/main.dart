import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pockaw/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Makes the status bar transparent.
      statusBarIconBrightness: Brightness.dark, // Adjust for light/dark icons.
    ),
  );
  runApp(const MyApp());
}
