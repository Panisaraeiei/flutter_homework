import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ✅ Import หน้า D03 (Register) เพื่อให้ปุ่ม Register Now ใช้งานได้
import 'd03_page_ui.dart';
// ✅ เพิ่ม Import หน้า D04 (Forgot Password)
import 'd04_page_ui.dart';

class D02PageUi extends StatefulWidget {
  const D02PageUi({super.key});

  @override
  State<D02PageUi> createState() => _D02PageUiState();
}

class _D02PageUiState extends State<D02PageUi> {
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
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back_ios_new, size: 20),
                      ),
                    ),

                    const SizedBox(height: 30),

                    // 2. หัวข้อ Welcome Back
                    Text(
                      'Welcome back! Glad\nto see you, Again!',
                      style: GoogleFonts.urbanist(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1E232C),
                      ),
                    ),

                    const SizedBox(height: 35),

                    // 3. ช่องกรอก Email
                    _buildTextField(hintText: 'Enter your email'),

                    const SizedBox(height: 15),

                    // 4. ช่องกรอก Password
                    _buildTextField(
                      hintText: 'Enter your password',
                      isPassword: true,
                    ),

                    // 5. ปุ่ม Forgot Password?
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // ✅ เพิ่มคำสั่ง Navigator เพื่อไปหน้า D04 เรียบร้อยครับ
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const D04PageUi(),
                            ),
                          );
                        },
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.urbanist(
                            color: const Color(0xFF6A707C),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // 6. ปุ่ม Login
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
                          'Login',
                          style: GoogleFonts.urbanist(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 35),

                    // 7. ส่วน Or Login with
                    Row(
                      children: [
                        Expanded(child: Divider(color: Colors.grey.shade300)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Or Login with',
                            style: GoogleFonts.urbanist(
                              color: const Color(0xFF6A707C),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Expanded(child: Divider(color: Colors.grey.shade300)),
                      ],
                    ),

                    const SizedBox(height: 25),

                    // 8. ปุ่ม Social Media (Facebook, Google, Apple)
                    Row(
                      children: [
                        _buildSocialButton(
                            icon: Icons.facebook, color: Colors.blue),
                        const SizedBox(width: 10),
                        _buildSocialButton(
                          imagePath: 'assets/images/google.png',
                          isImage: true,
                        ),
                        const SizedBox(width: 10),
                        _buildSocialButton(
                            icon: Icons.apple, color: Colors.black),
                      ],
                    ),

                    const SizedBox(height: 50),

                    // 9. ส่วน Don't have an account? Register Now
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: GoogleFonts.urbanist(
                              fontSize: 15,
                              color: const Color(0xFF1E232C),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // ✅ เพิ่มคำสั่ง Navigator เพื่อไปหน้า D03 แล้ว
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const D03PageUi(),
                                ),
                              );
                            },
                            child: Text(
                              'Register Now',
                              style: GoogleFonts.urbanist(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF35C2C1),
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

  // ฟังก์ชันช่วยสร้าง TextField ให้เหมือนกัน
  Widget _buildTextField({required String hintText, bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.urbanist(color: const Color(0xFF8391A1)),
        fillColor: const Color(0xFFF7F8F9),
        filled: true,
        suffixIcon: isPassword
            ? const Icon(Icons.visibility_outlined, color: Color(0xFF8391A1))
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFE8ECF4)),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF35C2C1)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  // ฟังก์ชันช่วยสร้างปุ่ม Social
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
              : Icon(icon, color: color, size: 26),
        ),
      ),
    );
  }
}
