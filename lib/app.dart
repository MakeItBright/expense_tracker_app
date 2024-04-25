// import 'package:expense_tracker_app/router/router.dart';
import 'package:expense_tracker_app/router/router.dart';
import 'package:expense_tracker_app/theme/theme.dart';
import 'package:flutter/material.dart';

class ExpenseTrackerApp extends StatefulWidget {
  const ExpenseTrackerApp({super.key});

  @override
  State<ExpenseTrackerApp> createState() => _ExpenseTrackerAppState();
}

class _ExpenseTrackerAppState extends State<ExpenseTrackerApp> {
  // final _appRouter = AppRouter();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "I Like Crypto",
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: darkTheme,
      // routerConfig: _appRouter.config(
      //   // navigatorObservers: () => [
         
      //   // ],
      // ),
    );
  }
}