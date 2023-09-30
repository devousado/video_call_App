import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_call/view/widget/custom_buttom.dart';
import 'package:video_call/view/widget/custom_text_field.dart';

class ScreatingMeetingPage extends StatefulWidget {
  const ScreatingMeetingPage({super.key});

  @override
  State<ScreatingMeetingPage> createState() => _ScreatingMeetingPageState();
}

class _ScreatingMeetingPageState extends State<ScreatingMeetingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Meeting",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
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
              SizedBox(
                height: 20,
              ),
              customTextField(context: context),
              SizedBox(
                height: 40,
              ),
              customButtom(
                  width: MediaQuery.of(context).size.width * 0.85,
                  textColor: Colors.black,
                  context: context,
                  onPressed: () {},
                  text: "Partilhar o convite",
                  color: Colors.white),
              SizedBox(
                height: 40,
              ),
              customButtom(
                  width: MediaQuery.of(context).size.width * 0.85,
                  context: context,
                  onPressed: () {},
                  text: "Juntar-se agora ",
                  color: Colors.blue)
            ],
          ),
        ),
      ),
    );
  }
}
