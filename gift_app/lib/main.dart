import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gift_app/components/app_bar.dart';
import 'package:gift_app/components/bottom_navigation_bar.dart';
import 'package:gift_app/components/date_button.dart';
import 'package:gift_app/components/gift_list.dart';
import 'package:gift_app/components/reason_gift_list.dart';
import 'package:gift_app/components/segmented_control.dart';
import 'package:gift_app/src/constants.dart';
import 'package:gift_app/theme/adaptive_theme.dart';
import 'package:gift_app/theme/theme.dart';


void main() {
  runZonedGuarded<void>(() {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const MyApp());
  }, (_, __) {});
}

bool themeIsLight = true;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      builder: (context, theme) => MaterialApp(
        home: const HomePage(),
        theme: theme.materialTheme,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appThemeData = AppTheme.of(context);
    final colorScheme = appThemeData.colorScheme;
    final typographySecondary =
        appThemeData.typography.withColor(colorScheme.textColor.primary);

    return Scaffold(
      backgroundColor: appThemeData.colorScheme.background.primary,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: MediaQuery.of(context).size.width,
        toolbarHeight: 50,
        leading: const BodyAppBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Column(children: [
            SizedBox(
              height: 50,
              child: SegmentedControl(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subheadeReasonGift,
                    style: typographySecondary.headline1ExtraBold,
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 100,
                    child: ReasonGiftList(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subheadeDayHoliday,
                    style: typographySecondary.headline1ExtraBold,
                  ),
                  const SizedBox(height: 16),
                  const DateButton(),
                  const SizedBox(
                    height: 35,
                  ),
                  GiftList()
                ],
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: const BottomNavifationBar(),
    );
  }
}
