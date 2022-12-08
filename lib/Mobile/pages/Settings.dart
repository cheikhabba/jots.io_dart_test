import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../utils/const.dart';

class MobileSettingsPage extends StatelessWidget {
  const MobileSettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          width: width * 0.50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.06),
                child: SizedBox(
                  height: height * 0.04,
                  width: width * 0.50,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Text(
                      "Theme",
                      style: bTextStyleBold.copyWith(fontSize: width * 0.035),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.0007),
                child: SizedBox(
                  height: height * 0.048,
                  width: width * 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              border: Border.all(color: Colors.black)),
                          child: Padding(
                            padding: EdgeInsets.all(width * 0.015),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.arrow_drop_down_outlined,
                                  size: width * 0.05,
                                ),
                                Text("Light Mode",
                                    style: bTextStyleBold.copyWith(
                                        fontSize: width * 0.029)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.0001,
                    left: width * 0.04,
                    right: width * 0.001),
                child: const Divider(),
              )
            ],
          ),
        ),
        SizedBox(
          width: width * 0.50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.01),
                child: SizedBox(
                  height: height * 0.048,
                  width: width * 0.50,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Text("HotKeys",
                        style:
                            bTextStyleBold.copyWith(fontSize: width * 0.035)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.001),
                child: SizedBox(
                  height: height * 0.08,
                  width: width * 0.55,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          child: Text("Open App",
                              style: bTextStyleBold.copyWith(
                                  fontSize: width * 0.025)),
                        ),
                        SizedBox(
                          child: Padding(
                            padding: EdgeInsets.all(width * 0.002),
                            child: Icon(
                              CupertinoIcons.command,
                              size: width * 0.03,
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Padding(
                            padding: EdgeInsets.all(width * 0.002),
                            child: Text("J",
                                style: bTextStyleBold.copyWith(
                                    fontSize: width * 0.03)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(color: Colors.black)),
                          child: Padding(
                            padding: EdgeInsets.all(width * 0.01),
                            child: Text("Record new shortcut",
                                style: bTextStyleBold.copyWith(
                                    fontSize: width * 0.021)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.0001,
                    left: width * 0.04,
                    right: width * 0.001),
                child: const Divider(),
              )
            ],
          ),
        ),
        SizedBox(
          width: width * 0.50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.01),
                child: SizedBox(
                  height: height * 0.048,
                  width: width * 0.50,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Text("Other",
                        style:
                            bTextStyleBold.copyWith(fontSize: width * 0.035)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.001),
                child: SizedBox(
                  height: height * 0.035,
                  width: width * 0.50,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Text("Request Permitions",
                        style: bTextStyleBold.copyWith(
                          fontSize: width * 0.029,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
