import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ✅ นำเข้าหน้า Login เพื่อให้ปุ่ม Login Now ใช้งานได้
import 'd02_page_ui.dart';

class D03PageUi extends StatefulWidget {
  const D03PageUi({super.key});

  @override
  State<D03PageUi> createState() => _D03PageUiState();
}

class _D03PageUiState extends State<D03PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: SafeArea(
        child: Column(
          children: [
            // ==========================================
            // ส่วนที่เพิ่ม: จำลอง Status Bar (เวลา, WiFi, แบตเตอรี่)
            // ==========================================
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

            // ส่วนเนื้อหาเดิมที่หุ้มด้วย Expanded เพื่อให้เลื่อนดูได้
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    // 1. ปุ่มย้อนกลับ (Back Button)
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFE8ECF4)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back_ios_new,
                            size: 20, color: Colors.black),
                      ),
                    ),

                    const SizedBox(height: 30),

                    // 2. หัวข้อ Hello! Register to get started
                    Text(
                      'Hello! Register to get\nstarted',
                      style: GoogleFonts.urbanist(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1E232C),
                        letterSpacing: -0.5,
                      ),
                    ),

                    const SizedBox(height: 35),

                    // 3. ฟิลด์กรอกข้อมูลต่างๆ
                    _buildTextField(hintText: 'Username'),
                    const SizedBox(height: 12),

                    // แก้ไข: นำ isFocused ออกเพื่อให้กรอบสีฟ้าหายไป
                    _buildTextField(hintText: 'Email'),

                    const SizedBox(height: 12),
                    _buildTextField(hintText: 'Password'),
                    const SizedBox(height: 12),
                    _buildTextField(hintText: 'Confirm password'),

                    const SizedBox(height: 30),

                    // 4. ปุ่ม Register
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E232C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'Register',
                          style: GoogleFonts.urbanist(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 35),

                    // 5. ส่วน Or Register with
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                                color: Colors.grey.shade200, thickness: 1)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Or Register with',
                            style: GoogleFonts.urbanist(
                              color: const Color(0xFF6A707C),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Expanded(
                            child: Divider(
                                color: Colors.grey.shade200, thickness: 1)),
                      ],
                    ),

                    const SizedBox(height: 25),

                    // 6. ปุ่ม Social Media (FB, Google, Apple)
                    Row(
                      children: [
                        _buildSocialButton(
                            icon: Icons.facebook,
                            color: const Color(0xFF1877F2)),
                        const SizedBox(width: 12),
                        _buildSocialButton(
                          imagePath:
                              'assets/images/google.png', // เปลี่ยนเป็น path รูปของคุณ
                          isImage: true,
                        ),
                        const SizedBox(width: 12),
                        _buildSocialButton(
                            icon: Icons.apple, color: Colors.black),
                      ],
                    ),

                    const SizedBox(height: 50),

                    // 7. ส่วน Already have an account? Login Now
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account? ",
                            style: GoogleFonts.urbanist(
                              fontSize: 15,
                              color: const Color(0xFF1E232C),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // ✅ เพิ่มคำสั่ง Navigator เพื่อไปยังหน้า D02 แล้ว
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const D02PageUi()),
                              );
                            },
                            child: Text(
                              'Login Now',
                              style: GoogleFonts.urbanist(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: const Color(
                                    0xFF35C2C1), // สีเขียวมิ้นต์ยอดฮิต
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ฟังก์ชันสร้าง TextField (เน้นสีพื้นหลัง F7F8F9)
  Widget _buildTextField({required String hintText}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.urbanist(
          color: const Color(0xFF8391A1),
          fontSize: 15,
        ),
        fillColor: const Color(0xFFF7F8F9),
        filled: true,
        // แก้ไขส่วนนี้: กำหนดให้ขอบเป็นสีเทาปกติเสมอ ไม่เปลี่ยนตามสถานะ
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFE8ECF4), // ใช้สีเทาอ่อนปกติ
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF35C2C1), width: 1.5),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  // ฟังก์ชันสร้างปุ่ม Social
  Widget _buildSocialButton(
      {IconData? icon, String? imagePath, Color? color, bool isImage = false}) {
    return Expanded(
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFE8ECF4)),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isImage
              ? Image.asset(imagePath!, width: 24)
              : Icon(icon, color: color, size: 28),
        ),
      ),
    );
  }
}
