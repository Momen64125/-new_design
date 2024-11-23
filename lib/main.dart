// import 'package:flutter/material.dart';
// import 'package:untitled4/task.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     final isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;
//     return MaterialApp(
//       theme: isDarkMode ? ThemeManager.getDarkMode() : ThemeManager.getLightMode(),
//       title: 'Flutter Demo',
//
//       home: task(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:untitled4/task.dart';
import 'package:untitled4/theme/theme_manager.dart';

import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;

        return MaterialApp(
          //theme: isDarkMode ? ThemeManager.getDarkMode() : ThemeManager.getLightMode(),
          title: 'Flutter Demo',
          home:  task(scheduleDetailsModel: ScheduleDetailsModel( 1, 1, 1, 1, 'pending', DateTime.now(), DateTime.now(), 1, 1, 'task', 'projectname')  ),
        );
      },
    );
  }
}
