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
      // 2026-08-09: this used to force a fixed 250x400 MediaQuery/
      // Container size, presumably to mimic a small desktop widget
      // window on the platforms upstream targets (macOS/Windows). On
      // UT there's no windowing at all -- the app is always fullscreen
      // on the real phone display -- so that override just crammed the
      // whole UI into a postage-stamp corner of a 1080x2340 screen.
      // Let the real MediaQuery (and hence LandingPage's own layout)
      // see the actual screen size instead.
      home: LandingPage(),
    );
  }
}
