import 'package:flutter/material.dart';
import 'package:jots/utils/const.dart';

import '../../utils/nav_utils.dart';

class MobileNavButtons extends StatefulWidget {
  const MobileNavButtons({super.key});

  @override
  State<MobileNavButtons> createState() => _MobileNavButtonsState();
}

class _MobileNavButtonsState extends State<MobileNavButtons> {
  bool settingSelected = false;

  bool accountSelected = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: const Color.fromRGBO(238, 238, 238, 1),
      width: width * 0.26,
      child: Stack(children: [
        // profile picture
        Positioned(
          top: height * 0.04,
          child: Container(
            alignment: Alignment.center,
            width: width * 0.26,
            child: Column(
              children: [
                CircleAvatar(
                    radius: width * 0.11,
                    backgroundColor: black,
                    child: CircleAvatar(
                      radius: width * 0.1,
                      backgroundImage: const AssetImage("assets/Cheikh.png"),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Edit",
                      style: bTextStyle.copyWith(
                          color: Colors.blue, fontSize: width * 0.04),
                    )),
              ],
            ),
          ),
        ),
        // Acount and settings buttons
        Positioned(
          top: MediaQuery.of(context).size.height * 0.19,
          child: Container(
            width: width * 0.26,
            height: height * 0.2,
            child: Column(
              children: [
                SizedBox(
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
                      size: width * 0.03,
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
                          fontSize: width * 0.035),
                    ),
                  ),
                ),
                SizedBox(
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
                          fontSize: width * 0.035),
                    ),
                    icon: Icon(
                      Icons.settings,
                      size: width * 0.035,
                      color: blackColor
                          ? accountNav
                              ? const Color.fromARGB(255, 0, 0, 0)
                              : const Color.fromARGB(255, 255, 255, 255)
                          : Colors.grey[800],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // logout
        Positioned(
          bottom: height * 0.0,
          child: SizedBox(
            width: width * 0.25,
            child: TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.logout,
                color: Colors.black,
                size: width * 0.03,
              ),
              label: Text(
                "Log out",
                style: bTextStyle.copyWith(fontSize: width * 0.03),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
