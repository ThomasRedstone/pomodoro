import 'package:flutter/material.dart';
import 'package:hp/landing.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  // window_manager's macOS-only sizing call (never true on this
  // Linux/UT embedder) removed along with the dependency — see
  // pubspec.yaml's comment.
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (BuildContext context) {
          final mediaQueryData = MediaQuery.of(context);
          final screenWidth = 250.0;
          final screenHeight = 400.0;
          return MediaQuery(
            data: mediaQueryData.copyWith(
              size: Size(screenWidth, screenHeight),
              devicePixelRatio: mediaQueryData.devicePixelRatio,
            ),
            child: Container(
              width: screenWidth,
              height: screenHeight,
              child: LandingPage(),
            ),
          );
        },
      ),
    );
  }
}
