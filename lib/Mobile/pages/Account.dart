import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../utils/const.dart';
import '../dialogs/edit_email_dialog.dart';

class MobileAccount extends ConsumerWidget {
  const MobileAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = ref.watch(emailProvider);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          width: width * 0.43,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.055),
                child: SizedBox(
                  height: height * 0.03,
                  width: width * 0.43,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Text(
                      "Name",
                      style: bTextStyleBold.copyWith(fontSize: width * 0.035),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.0009),
                child: SizedBox(
                  height: height * 0.04,
                  width: width * 0.43,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Text("cheikh",
                        style:
                            bTextStyleBold.copyWith(fontSize: width * 0.033)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.003),
                child: SizedBox(
                  height: height * 0.03,
                  width: width * 0.43,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Text("Change Name",
                        style: bTextStyleBold.copyWith(
                            fontSize: width * 0.031, color: Colors.blue)),
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
          width: width * 0.43,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.01),
                child: SizedBox(
                  height: height * 0.03,
                  width: width * 0.43,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Text("Email",
                        style:
                            bTextStyleBold.copyWith(fontSize: width * 0.035)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.001),
                child: SizedBox(
                  height: height * 0.04,
                  width: width * 0.43,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Text("$email",
                        style:
                            bTextStyleBold.copyWith(fontSize: width * 0.033)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.001),
                child: SizedBox(
                  height: height * 0.035,
                  width: width * 0.43,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                const MobileEditEmail());
                      },
                      child: Text("Change Email",
                          style: bTextStyleBold.copyWith(
                              fontSize: width * 0.031, color: Colors.red)),
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
          width: width * 0.43,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.01),
                child: SizedBox(
                  height: height * 0.04,
                  width: width * 0.43,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Text("Password",
                        style:
                            bTextStyleBold.copyWith(fontSize: width * 0.035)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.001),
                child: SizedBox(
                  height: height * 0.03,
                  width: width * 0.43,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Text("Change password",
                        style: bTextStyleBold.copyWith(
                            fontSize: width * 0.031, color: Colors.blue)),
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
          width: width * 0.43,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.01),
                child: SizedBox(
                  height: height * 0.04,
                  width: width * 0.43,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Text("Account",
                        style:
                            bTextStyleBold.copyWith(fontSize: width * 0.035)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.001),
                child: SizedBox(
                  height: height * 0.03,
                  width: width * 0.43,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Text("Delete Acount",
                        style: bTextStyleBold.copyWith(
                            fontSize: width * 0.031, color: Colors.red)),
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
