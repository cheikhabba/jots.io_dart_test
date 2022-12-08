import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jots/utils/user_email.dart';
import 'Main_page.dart';
import 'utils/nav_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserEmailPref.init();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Utils.app1Nav,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: MainPage(),
        ),
      ),
    );
  }
}
