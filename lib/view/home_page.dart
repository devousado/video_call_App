// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:video_call/view/constantes/svg_images_const.dart';
import 'package:video_call/view/util/svg_converter.dart';
import 'package:video_call/view/widget/custom_buttom.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  List<MeetingIlustrationModel> imageOfIlustration = [
    MeetingIlustrationModel(
        image: meetingIlustration1,
        title: "Obtenha um link que pode partilhar "),
    MeetingIlustrationModel(
        image: meetingIlustration1, title: "Planeie com antecedencia"),
    MeetingIlustrationModel(
        image: meetingIlustration1, title: "A sua reunião é segura"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _header(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customButtom(
                    textColor: Colors.black,
                    color: Colors.white,
                    context: context,
                    onPressed: () {},
                    text: "Join meeting"),
                customButtom(
                    color: Colors.blue,
                    context: context,
                    onPressed: () {},
                    text: "Creat a meeting")
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 130),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.56,
            child: PageView.builder(
              onPageChanged: (value) =>
                  ref.read(currentPage.notifier).state = value,
              itemCount: imageOfIlustration.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    svgConverter(
                      imageSvg: imageOfIlustration[index].image,
                    ),
                    Text(imageOfIlustration[index].title)
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                imageOfIlustration.length,
                (index) => AnimatedContainer(
                  margin: const EdgeInsets.all(8),
                  height: 10,
                  width: 10,
                  duration: const Duration(microseconds: 1000),
                  decoration: BoxDecoration(
                    color: ref.watch(currentPage) == index
                        ? Colors.blue
                        : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  final currentPage = StateProvider((ref) => 0);
}

class MeetingIlustrationModel {
  String image;
  String title;
  MeetingIlustrationModel({
    required this.image,
    required this.title,
  });
}
