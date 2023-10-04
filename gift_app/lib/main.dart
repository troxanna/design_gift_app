import 'dart:async';

import 'package:flutter/material.dart';
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
        title: 'Ui Kit Demo',
        home: const UiKitMainPage(),
        theme: theme.materialTheme,
      ),
    );
  }
}

class UiKitMainPage extends StatefulWidget {
  const UiKitMainPage({super.key});

  @override
  State<UiKitMainPage> createState() => _UiKitMainPageState();
}

class _UiKitMainPageState extends State<UiKitMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.of(context).colorScheme.background.primary,
      appBar: AppBar(
        title: const Text('UI-кiт'),
      ),
      body: Align(
        child: SizedBox(
          height: 197,
          width: 141,
          child: _createItem(context, 'Theme')
        ),
      ),
    );
  }
}

Widget _createItem(
  BuildContext context,
  String label,
) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: AppTheme.of(context).radius.radius22,
      gradient: AppTheme.of(context).gradient.secondary,
    ),
    child: GestureDetector(
      onTap: null,
      child: Container(
        height: 33,
        width: 121,
        decoration: BoxDecoration(
          borderRadius: AppTheme.of(context).radius.radius22,
          gradient: AppTheme.of(context).gradient.primary,
        ),
        child: Center(
          child: Text(
            label,
            style: AppTheme.of(context).typography.body15Bold,
          ),
        ),
      ),
    ),
  );
}
