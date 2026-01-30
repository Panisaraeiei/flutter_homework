import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'd02_page_ui.dart'; // Import หน้า Login เพื่อกลับไปเริ่มต้นใหม่

class D07PageUi extends StatefulWidget {
  const D07PageUi({super.key});

  @override
  State<D07PageUi> createState() => _D07PageUiState();
}

class _D07PageUiState extends State<D07PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 241, 164),
      body: SafeArea(
        child: Column(
          children: [
            // 1. Mock Status Bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '9:41',
                    style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.signal_cellular_4_bar, size: 16),
                      SizedBox(width: 5),
                      Icon(Icons.wifi, size: 16),
                      SizedBox(width: 5),
                      Icon(Icons.battery_full, size: 16),
                    ],
                  ),
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 2. Success Icon
                    Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Color(0xFF25D366),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 60,
                      ),
                    ),

                    const SizedBox(height: 35),

                    // 3. Title Text
                    Text(
                      'Password Changed!',
                      style: GoogleFonts.urbanist(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1E232C),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // 4. Subtitle Text
                    Text(
                      'Your password has been changed\nsuccessfully.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.urbanist(
                        fontSize: 16,
                        color: const Color(0xFF8391A1),
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 40),

                    // 5. Back to Login Button
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          // ✅ คำสั่งกลับไปหน้า Login และล้างหน้าจอก่อนหน้าทั้งหมด
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const D02PageUi()),
                            (route) =>
                                false, // ลบทุก Route ที่มีอยู่ก่อนหน้านี้
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E232C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'Back to Login',
                          style: GoogleFonts.urbanist(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
