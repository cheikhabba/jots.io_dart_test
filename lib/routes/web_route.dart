import 'package:flutter/material.dart';
import 'package:jots/utils/const.dart';
import '../Web/dialogs/account_dialog.dart';
import '../Web/dialogs/settings_dialog.dart';
import '../utils/nav_utils.dart';

class WebRoutes extends StatelessWidget {
  const WebRoutes({super.key});

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
                  page = const AccountDialog();
                  break;

                case '/app2page3':
                  page = const SettingsDialog();
                  break;
                default:
                  if (accountNav == true) {
                    page = const AccountDialog();
                  } else {
                    page = const SettingsDialog();
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
