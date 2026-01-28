import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'c02_page_ui.dart';
// ✅ Import หน้า Home (ตรวจสอบชื่อไฟล์ให้ถูกต้อง เช่น home_ui.dart)
import 'home_ui.dart';

class C01PageUi extends StatefulWidget {
  const C01PageUi({super.key});

  @override
  State<C01PageUi> createState() => _C01PageUiState();
}

class _C01PageUiState extends State<C01PageUi> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const C02PageUi()),
        );
      },
      child: Scaffold(
        body: Stack(
          children: [
            // 1. รูปพื้นหลัง (โค้ดเดิม)
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/nongp.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // 2. Overlay สีดำจางๆ (โค้ดเดิม)
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withOpacity(0.25),
            ),

            // 3. ส่วนเนื้อหาที่ย้ายมาอยู่ตรงกลางจอ (โค้ดเดิม)
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // โลโก้ตัว H
                  Container(
                    padding: const EdgeInsets.all(18.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 15,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Text(
                      'H',
                      style: GoogleFonts.kanit(
                        fontSize: 65.0,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF00C853),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30.0),

                  // ข้อความหัวข้อหลัก
                  Text(
                    'HOPE FOR\nHUMANITY',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.kanit(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.1,
                      letterSpacing: 1.1,
                    ),
                  ),

                  const SizedBox(height: 40.0),

                  // ข้อความต้อนรับ
                  Text(
                    'Welcome to\nhope for humanity',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.kanit(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        const Shadow(
                          blurRadius: 8.0,
                          color: Colors.black54,
                          offset: Offset(1.5, 1.5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // ✅ 4. เพิ่มปุ่มย้อนกลับไปหน้า Home (วางไว้บนสุดของ Stack)
            Positioned(
              top: 45, // เว้นระยะจากขอบบน
              left: 15, // เว้นระยะจากขอบซ้าย
              child: CircleAvatar(
                backgroundColor: Colors.white
                    .withOpacity(0.3), // พื้นหลังปุ่มจางๆ ให้ดูเข้ากับธีม
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeUi()),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
