import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'd02_page_ui.dart';
import 'd03_page_ui.dart';

class D01PageUi extends StatefulWidget {
  const D01PageUi({super.key});

  @override
  State<D01PageUi> createState() => _D01PageUiState();
}

class _D01PageUiState extends State<D01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: SafeArea(
        child: Stack(
          // ✅ ใช้ Stack เพื่อวางปุ่มย้อนกลับทับบนเลเยอร์ปกติ
          children: [
            // เลเยอร์หลัก (โค้ดเดิมของคุณทั้งหมด)
            Column(
              children: [
                // ✅ ปรับส่วนนี้: เพิ่มความสูงจาก 20 เป็น 60 (หรือตามความเหมาะสม) เพื่อดันรูปพืชลงมา
                const SizedBox(height: 90),

                // 1. ส่วนรูปภาพพืช
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset(
                    'assets/images/plant.png',
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.35,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      color: Colors.grey[100],
                      child: const Icon(Icons.image_not_supported,
                          size: 50, color: Colors.grey),
                    ),
                  ),
                ),

                // Spacer ตัวที่ 1 ดันให้ Logo อยู่กลางพื้นที่ว่าง
                const Spacer(),

                // 2. โลโก้และชื่อแบรนด์ Fruzzdigital
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/authenticity.png',
                        width: 120,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.stars,
                                size: 120, color: Colors.cyan),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Fruzzdigital',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),

                // Spacer ตัวที่ 2 ดันส่วนปุ่มไปไว้ด้านล่าง
                const Spacer(),

                // 3. ส่วนของปุ่มนำทาง (Login และ Register)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const D02PageUi()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1D222B),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Login',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const D03PageUi()),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: Color(0xFF1D222B),
                              width: 1.5,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Register',
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF1D222B),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Continue as a guest',
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF00C2CB),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),

            // ✅ เพิ่มเลเยอร์ปุ่มย้อนกลับ (Positioned)
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context); // กดย้อนกลับไปหน้า Home
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
