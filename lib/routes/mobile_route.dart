import 'package:flutter/material.dart';
import 'package:jots/Mobile/dialogs/account_dialog.dart';
import 'package:jots/Mobile/dialogs/settings_dialog.dart';
import 'package:jots/utils/const.dart';
import '../Web/dialogs/account_dialog.dart';
import '../Web/dialogs/settings_dialog.dart';
import '../utils/nav_utils.dart';

class MobileRoute extends StatelessWidget {
  const MobileRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: Navigator(
            key: Utils.app2Nav,
            onGenerateRoute: (RouteSettings settings) {
              Widget page;

              switch (settings.name) {
                case '/app2page1':
                  page = const MobileAccountDialog();
                  break;

                case '/app2page3':
                  page = const MobileSettingsDialog();
                  break;
                default:
                  if (accountNav == true) {
                    page = const MobileAccountDialog();
                  } else {
                    page = const MobileSettingsDialog();
                  }

                  break;
              }

              return PageRouteBuilder(
                  pageBuilder: (_, __, ___) => page,
                  transitionDuration: const Duration(seconds: 0));
            }),
      ),
    ]);
  }
}
