import 'package:flutter/material.dart';
import '../pages/Account.dart';
import '../pages/nav_buttons.dart';

class AccountDialog extends StatelessWidget {
  const AccountDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.58,
        width: MediaQuery.of(context).size.width * 0.44,
        child: Stack(
          children: [
            Container(
              alignment: FractionalOffset.topRight,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.clear)),
            ),
            Row(
              children: const [
                NavButtons(),
                Account(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
