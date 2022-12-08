import 'package:flutter/material.dart';
import 'package:jots/utils/const.dart';

import '../../utils/nav_utils.dart';

class NavButtons extends StatefulWidget {
  const NavButtons({super.key});

  @override
  State<NavButtons> createState() => _NavButtonsState();
}

class _NavButtonsState extends State<NavButtons> {
  bool settingSelected = false;

  bool accountSelected = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: const Color.fromRGBO(238, 238, 238, 1),
      width: width * 0.11,
      child: Stack(children: [
        Positioned(
          top: height * 0.04,
          child: Container(
            alignment: Alignment.center,
            width: width * 0.11,
            child: Column(
              children: [
                CircleAvatar(
                    radius: width * 0.036,
                    backgroundColor: black,
                    child: CircleAvatar(
                      radius: width * 0.034,
                      backgroundImage: const AssetImage("assets/Cheikh.png"),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Edit",
                      style: bTextStyle.copyWith(
                          color: Colors.blue, fontSize: width * 0.012),
                    )),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: height * 0.018,
          child: SizedBox(
            width: width * 0.11,
            child: TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.logout,
                color: Colors.black,
                size: width * 0.007,
              ),
              label: Text(
                "Log out",
                style: bTextStyle.copyWith(fontSize: width * 0.01),
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.255,
          child: SizedBox(
            width: width * 0.11,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(
                    width * 0.005,
                  ),
                  child: SizedBox(
                    width: width * 0.085,
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        backgroundColor: blackColor
                            ? settingNav
                                ? const Color.fromRGBO(238, 238, 238, 1)
                                : const Color.fromARGB(255, 0, 0, 0)
                            : Colors.grey[800],
                      ),
                      onPressed: () {
                        setState(() {
                          accountNav = true;
                          settingNav = false;
                        });

                        Utils.app2Nav.currentState!
                            .pushReplacementNamed('/app2page1');
                      },
                      icon: Icon(
                        Icons.account_box,
                        size: width * 0.011,
                        color: blackColor
                            ? accountNav
                                ? const Color.fromARGB(255, 255, 255, 255)
                                : const Color.fromARGB(255, 0, 0, 0)
                            : Colors.grey[800],
                      ),
                      label: Text(
                        'Account',
                        style: bTextStyle.copyWith(
                            color: blackColor
                                ? settingNav
                                    ? const Color.fromARGB(255, 0, 0, 0)
                                    : const Color.fromARGB(255, 255, 255, 255)
                                : Colors.grey[800],
                            fontSize: width * 0.009),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    width * 0.002,
                  ),
                  child: SizedBox(
                    width: width * 0.085,
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        backgroundColor: blackColor
                            ? accountNav
                                ? const Color.fromRGBO(238, 238, 238, 1)
                                : const Color.fromARGB(255, 0, 0, 0)
                            : Colors.grey[800],
                      ),
                      onPressed: () {
                        setState(() {
                          accountNav = false;
                          settingNav = true;
                        });

                        Utils.app2Nav.currentState!
                            .pushReplacementNamed('/app2page3');
                      },
                      label: Text(
                        'Settings',
                        style: bTextStyle.copyWith(
                            color: blackColor
                                ? accountNav
                                    ? const Color.fromARGB(255, 0, 0, 0)
                                    : const Color.fromARGB(255, 255, 255, 255)
                                : Colors.grey[800],
                            fontSize: width * 0.009),
                      ),
                      icon: Icon(
                        Icons.settings,
                        size: width * 0.011,
                        color: blackColor
                            ? accountNav
                                ? const Color.fromARGB(255, 0, 0, 0)
                                : const Color.fromARGB(255, 255, 255, 255)
                            : Colors.grey[800],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
