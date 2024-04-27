import 'package:expense_tracker_app/generated/l10n.dart';
import 'package:expense_tracker_app/router/router.dart';
import 'package:expense_tracker_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ExpenseTrackerApp extends StatefulWidget {
  const ExpenseTrackerApp({super.key});

  @override
  State<ExpenseTrackerApp> createState() => _ExpenseTrackerAppState();
}

class _ExpenseTrackerAppState extends State<ExpenseTrackerApp> {
  final _appRouter = AppRouter();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "I Like Crypto",
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      routerConfig: _appRouter.config(
        // navigatorObservers: () => [
         
        // ],
      ),
      localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}