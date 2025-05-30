import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:motivo/Screens/hustle.dart';
import '../Home/home.dart';
import '../Screens/discipline.dart';
import '../Screens/pain.dart';
import '../Screens/success.dart';


// TAB BARS
ButtonsTabBar myTabBar(BuildContext context) {
  return ButtonsTabBar(
    backgroundColor: ColorScheme.of(context).tertiary,
    unselectedBackgroundColor: ColorScheme.of(context).background,
    unselectedLabelStyle: TextStyle(color: ColorScheme.of(context).tertiary),
    labelStyle: TextStyle(color: ColorScheme.of(context).background),
    buttonMargin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    contentPadding: EdgeInsets.symmetric(horizontal: 10),
    borderColor: ColorScheme.of(context).tertiary,
    borderWidth: 1,
    tabs: [
      Tab(icon: Icon(Icons.home), text: 'Home'),
      Tab(icon: Icon(Icons.access_alarm), text: 'Discipline'),
      Tab(icon: Icon(Icons.sentiment_dissatisfied_rounded), text: 'Pain'),
      Tab(icon: Icon(Icons.emoji_events), text: 'Success'),
      Tab(icon: Icon(Icons.directions_run), text: 'Hustle'),
    ],
  );
}

Expanded myTabBarView() {
  return Expanded(
    child: TabBarView(
      children: const [Home(), Discipline(), Pain(), Success(), Hustle()],
    ),
  );
}
