// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// 1. Import หน้าที่ต้องการเชื่อมไปหา
import 'a01_page_ui.dart';
import 'b01_page_ui.dart';
import 'c01_page_ui.dart'; // ✅ เพิ่มการ import หน้า C01 ตรงนี้

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 182, 247, 193), // สีม่วงเข้ม
      body: Center(
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
                  backgroundColor: const Color(0xFF224099),
                  fixedSize: const Size(double.infinity, 55.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),

              const SizedBox(height: 15.0),

              // ==========================================
              // ปุ่มกดไปหน้า C (แก้ไขการเชื่อมโยงแล้ว)
              // ==========================================
              ElevatedButton(
                onPressed: () {
                  // ✅ ใส่ Navigator เพื่อไปหน้า C01
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
                  backgroundColor: const Color(0xFF009C41),
                  fixedSize: const Size(double.infinity, 55.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),

              const SizedBox(height: 15.0),

              // ปุ่ม D (ยังไม่ได้เชื่อม)
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Go to D Page',
                  style: GoogleFonts.kanit(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF35BCAF),
                  fixedSize: const Size(double.infinity, 55.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),

              const SizedBox(height: 15.0),

              // ปุ่ม E (ยังไม่ได้เชื่อม)
              ElevatedButton(
                onPressed: () {},
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
    );
  }
}
