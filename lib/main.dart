import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:russia_social/pages/tabs_page.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:sizer/sizer.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Russia Social',
        theme: ThemeData(
          bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),
          unselectedWidgetColor: buttonLeft,
          primarySwatch: Colors.blue,
        ),
        home: const TabsPage(),
      );
    });
  }
}
