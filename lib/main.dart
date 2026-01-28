import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ใช้ import แบบนี้เพื่อตัดปัญหาเรื่องชื่อโปรเจกต์ไม่ตรง
import 'views/home_ui.dart';

void main() {
  runApp(
    // เรียกใช้งานคลาสหลักของแอป
    const FlutterHomeworkApp(),
  );
}

//--------------------------------------------
class FlutterHomeworkApp extends StatefulWidget {
  const FlutterHomeworkApp({super.key});

  @override
  State<FlutterHomeworkApp> createState() => _FlutterHomeworkAppState();
}

class _FlutterHomeworkAppState extends State<FlutterHomeworkApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ซ่อนป้าย debug คาดสีแดง
      debugShowCheckedModeBanner: false,
      // กำหนดหน้าจอแรก (เรียก HomeUi จากไฟล์ home_ui.dart)
      home: const HomeUi(),
      // กำหนด ธีม โดยเฉพาะ font หลักของแอป
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
