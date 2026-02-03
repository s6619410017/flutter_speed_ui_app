import 'package:flutter/material.dart';
import 'package:flutter_iot_second_app/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const FlutterIoTSecondApp());
}

//--------------------------------------------
class FlutterIoTSecondApp extends StatefulWidget {
  const FlutterIoTSecondApp({super.key});

  @override
  State<FlutterIoTSecondApp> createState() => _FlutterIoTSecondAppState();
}

class _FlutterIoTSecondAppState extends State<FlutterIoTSecondApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // หน้าแรกของแอป
      home: const HomeUI(),

      // Theme หลักของแอป (iOS clean style)
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF9F9F9),
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
