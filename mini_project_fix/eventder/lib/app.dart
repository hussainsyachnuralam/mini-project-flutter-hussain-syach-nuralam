import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:eventder/home.dart';
import 'package:eventder/splash_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: SplashScreen(),
    );
  }
}
