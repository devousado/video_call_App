import 'package:go_router/go_router.dart';
import 'package:video_call/main.dart';
import 'package:video_call/view/creating_meeting_page.dart';
import 'package:video_call/view/join_meeting_page.dart';

final router = GoRouter(
  initialLocation: '/myApp',
  routes: [
    GoRoute(
      path: '/myApp',
      builder: (context, state) => const MyApp(),
    ),
    GoRoute(
      path: '/mcreatingMeetingPage',
      builder: (context, state) => ScreatingMeetingPage(),
    ),
    GoRoute(
      path: '/joinMeetingPage',
      builder: (context, state) => JoinMeetingPage(),
    )
  ],
);
