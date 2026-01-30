// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// 1. Import หน้าที่ต้องการเชื่อมไปหา
import 'a01_page_ui.dart';
import 'b01_page_ui.dart';
import 'c01_page_ui.dart';
import 'd01_page_ui.dart';
import 'e01_page_ui.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // นำ backgroundColor ออก และใช้ Container หุ้ม body แทน
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/pokhome.jpg'), // เปลี่ยนชื่อไฟล์ภาพพื้นหลังตรงนี้
            fit: BoxFit.cover, // ปรับให้ภาพเต็มจอ
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // รูป Logo กลางหน้า Home
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'assets/images/tree.png',
                    height: 200.0,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => const Icon(
                      Icons.image,
                      size: 100,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),

                // ==========================================
                // ปุ่มกดไปหน้า A
                // ==========================================
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const A01PageUi(),
                      ),
                    );
                  },
                  child: Text(
                    'Go to A Page',
                    style: GoogleFonts.kanit(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF088D6),
                    fixedSize: const Size(double.infinity, 55.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),

                const SizedBox(height: 15.0),

                // ==========================================
                // ปุ่มกดไปหน้า B
                // ==========================================
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const B01PageUi(),
                      ),
                    );
                  },
                  child: Text(
                    'Go to B Page',
                    style: GoogleFonts.kanit(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 133, 159, 236),
                    fixedSize: const Size(double.infinity, 55.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),

                const SizedBox(height: 15.0),

                // ==========================================
                // ปุ่มกดไปหน้า C
                // ==========================================
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const C01PageUi(),
                      ),
                    );
                  },
                  child: Text(
                    'Go to C Page',
                    style: GoogleFonts.kanit(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 228, 145, 201),
                    fixedSize: const Size(double.infinity, 55.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),

                const SizedBox(height: 15.0),

                // ==========================================
                // ปุ่มกดไปหน้า D
                // ==========================================
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const D01PageUi(),
                      ),
                    );
                  },
                  child: Text(
                    'Go to D Page',
                    style: GoogleFonts.kanit(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 201, 106, 239),
                    fixedSize: const Size(double.infinity, 55.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),

                const SizedBox(height: 15.0),

                // ==========================================
                // ปุ่ม E (เพิ่มการเชื่อมหน้าแล้ว)
                // ==========================================
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const E01PageUi(),
                      ),
                    );
                  },
                  child: Text(
                    'Go to E Page',
                    style: GoogleFonts.kanit(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF09516),
                    fixedSize: const Size(double.infinity, 55.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
