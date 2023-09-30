import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_call/view/widget/custom_buttom.dart';
import 'package:video_call/view/widget/custom_text_field.dart';

import 'widget/custom_app_bar.dart';

class JoinMeetingPage extends StatefulWidget {
  const JoinMeetingPage({super.key});

  @override
  State<JoinMeetingPage> createState() => _JoinMeetingPageState();
}

class _JoinMeetingPageState extends State<JoinMeetingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: "Join meeting",
        onPressed: () => context.pop(),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customTextField(context: context, hintext: " #  Link da reunião"),
            const SizedBox(
              height: 30,
            ),
            customButtom(
              width: MediaQuery.of(context).size.width * 0.85,
              context: context,
              onPressed: () async {},
              text: "Juntar-se ",
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
