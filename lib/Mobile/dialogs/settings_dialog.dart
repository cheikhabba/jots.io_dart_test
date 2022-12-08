import 'package:flutter/material.dart';

import '../pages/nav_buttons.dart';
import '../pages/Settings.dart';

class MobileSettingsDialog extends StatelessWidget {
  const MobileSettingsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.55,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Stack(
          children: [
            Container(
              alignment: FractionalOffset.topRight,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.clear,
                  )),
            ),
            Row(
              children: const [
                MobileNavButtons(),
                MobileSettingsPage(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
