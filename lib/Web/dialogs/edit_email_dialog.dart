import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jots/utils/user_email.dart';
import '../../utils/const.dart';

class EditEmail extends ConsumerWidget {
  const EditEmail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController emailControler = TextEditingController();

    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.2,
              child: TextField(
                controller: emailControler,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () async {
                  ref.read(emailProvider.notifier).state = emailControler.text;
                  await UserEmailPref.setEmail(emailControler.text);
                  Navigator.pop(context);
                  // saving email
                },
                child: const Text("Save Email")),
          )
        ],
      ),
    );
  }
}
