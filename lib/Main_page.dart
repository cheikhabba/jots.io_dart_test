import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jots/routes/mobile_route.dart';
import 'routes/web_route.dart';
import 'utils/const.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = ref.watch(emailProvider);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 500) {
          // Mobile layout
          return Stack(children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                child: Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          accountNav = true;
                          settingNav = false;
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  const MobileRoute());
                        },
                        child: const Text(
                          'go to account',
                          style: TextStyle(color: Colors.black),
                        )),
                    TextButton(
                        onPressed: () {
                          accountNav = false;
                          settingNav = true;
                          showDialog(
                              useRootNavigator: true,
                              context: context,
                              builder: (BuildContext context) =>
                                  const MobileRoute());
                        },
                        child: const Text(
                          'go to settings',
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.17),
                  child: Text("email : " "$email"),
                )),
          ]);
        } else if (constraints.maxWidth < 1100) {
          // Tablet screen to be implemented
          return Container(
            alignment: Alignment.center,
            child: Text(
              "Tablet Screen",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
            ),
          );
        } else {
          // Desktop layout
          return Stack(children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                child: Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          accountNav = true;
                          settingNav = false;
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  const WebRoutes());
                        },
                        child: const Text(
                          'go to account',
                          style: TextStyle(color: Colors.black),
                        )),
                    TextButton(
                        onPressed: () {
                          accountNav = false;
                          settingNav = true;
                          showDialog(
                              useRootNavigator: true,
                              context: context,
                              builder: (BuildContext context) =>
                                  const WebRoutes());
                        },
                        child: const Text(
                          'go to settings',
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.17),
                  child: Text("email : " "$email"),
                )),
          ]);
        }
      },
    );
  }
}
