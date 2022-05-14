import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/event_finder_api.dart';
import './providers/auth.dart';

import './pages/home_page.dart';
import './pages/auth_page.dart';
import './pages/event_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Auth(),
        ),
        ChangeNotifierProxyProvider<Auth, Events>(
          create: (context) => Events(),
          update: (context, auth, events) =>
              events..updateData(auth.token, auth.userId),
        ),
      ],
      builder: (context, child) => Consumer<Auth>(
        builder: (context, auth, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: auth.isAuth
              ? HomePage()
              : FutureBuilder(
                  future: auth.autoLogin(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Scaffold(
                        body: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }

                    return LoginPage();
                  },
                ),
          routes: {
            EventPage.route: (ctx) => EventPage(),
          },
        ),
      ),
    );
  }
}
