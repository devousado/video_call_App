import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_call/view/widget/custom_app_bar.dart';
import 'package:video_call/view/widget/custom_buttom.dart';
import 'package:video_call/view/widget/custom_text_field.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/services.dart';

class ScreatingMeetingPage extends StatefulWidget {
  const ScreatingMeetingPage({super.key});

  @override
  State<ScreatingMeetingPage> createState() => _ScreatingMeetingPageState();
}

class _ScreatingMeetingPageState extends State<ScreatingMeetingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: "Meeting",
        onPressed: () => context.pop(),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create a meeting",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            ),
            customTextField(
                context: context,
                iconData: IconButton(
                    onPressed: () async {
                      await clipBoardSave("mundo");
                    },
                    icon: const Icon(
                      Icons.copy,
                      color: Colors.grey,
                    ))),
            const SizedBox(
              height: 40,
            ),
            customButtom(
                width: MediaQuery.of(context).size.width * 0.85,
                textColor: Colors.black,
                context: context,
                onPressed: () async {
                  await shareContent("Ola felizardo");
                },
                text: "Partilhar o convite",
                color: Colors.white),
            const SizedBox(
              height: 40,
            ),
            customButtom(
                width: MediaQuery.of(context).size.width * 0.85,
                context: context,
                onPressed: () async {},
                text: "Juntar-se agora ",
                color: Colors.blue)
          ],
        ),
      ),
    );
  }

  Future<void> clipBoardSave(String text) async {
    await Clipboard.setData(ClipboardData(text: text)).then(
      (value) => ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("copiado !"),
        ),
      ),
    );
  }

  Future<void> shareContent(String text) async {
    final result = await Share.shareWithResult(text);
    if (result.status == ShareResultStatus.success) {
      await Share.share(text);
    }
  }
}
