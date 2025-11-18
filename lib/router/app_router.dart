import 'package:catholic_app_redesign/screens/social_teachings_screen.dart';
import 'package:catholic_app_redesign/screens/teachings_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/calendar_screen.dart';
import '../screens/home_screen.dart';
import '../screens/prayer_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/readings_screen.dart';
import '../widgets/scaffold_with_bottom_nav.dart';

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithBottomNav(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/teachings',
              builder: (context, state) => const TeachingsScreen(),
              routes: [
                GoRoute(
                  path: 'social',
                  builder: (context, state) => const SocialTeachingsScreen(),
                ),
              ],            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/prayer',
              builder: (context, state) => const PrayerScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/calendar',
              builder: (context, state) => const CalendarScreen(),
              routes: [
                GoRoute (
                  path: 'readings',
                  builder: (context, state) {
                    final date = DateTime.parse(state.uri.queryParameters['date']!);
                    return ReadingsScreen(date: date);
                  }
                )
              ]
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => const ProfileScreen(),

            ),
          ],
        ),
      ],
    ),
  ],
);
