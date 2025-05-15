import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../router/app_pages.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:iconify_flutter/icons/quill.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';

class DashboardFooter extends StatelessWidget {
  const DashboardFooter({super.key});

  static const routes = [
    Routes.home,
    Routes.promos,
    Routes.games,
    Routes.favorites,
    Routes.me,
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(fontSize: 12, color: Colors.black),
      child: IndexedRouteBuilder(
        routes: routes,
        builder: (context, routes, index) {
          final delegate = context.delegate;

          return CurvedNavigationBar(
            index: index,
            height: 56,
            backgroundColor: Colors.transparent,
            color: Colors.white,
            onTap: (value) {
              delegate.toNamed(routes[value]);
              //   delegate.offNamedUntil(
              //   routes[value],
              //   predicate: (route) {
              //     if (routes[value] == Routes.home) return false;
              //     return route.name == Routes.home;
              //   },
              // )
            },
            items: const [
              CurvedNavigationBarItem(
                child: Icon(Icons.home_outlined),
                label: "Home",
              ),
              CurvedNavigationBarItem(
                child: Iconify(Quill.gift),
                label: "Promos",
              ),
              CurvedNavigationBarItem(
                child: Icon(Icons.sports_esports_outlined),
                label: "Games",
              ),
              CurvedNavigationBarItem(
                child: Icon(Icons.loyalty_outlined),
                label: "Favorites",
              ),
              CurvedNavigationBarItem(
                child: Icon(Icons.person_outline),
                label: "Me",
              ),
            ],
          );
        },
      ),
    );
  }
}
