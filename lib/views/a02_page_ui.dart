import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'a01_page_ui.dart';

class A02PageUi extends StatefulWidget {
  const A02PageUi({super.key});

  @override
  State<A02PageUi> createState() => _A02PageUiState();
}

class _A02PageUiState extends State<A02PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
            child: Column(
              children: [
                // ✅ ส่วนที่เพิ่ม: Status Bar จำลอง (9:41, WiFi, Battery)
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '9:41',
                        style: GoogleFonts.kanit(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(Icons.signal_cellular_alt, size: 18),
                          SizedBox(width: 4),
                          Icon(Icons.wifi, size: 18),
                          SizedBox(width: 4),
                          Icon(Icons.battery_full, size: 18),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                    height:
                        30.0), // ปรับลด height ลงเล็กน้อยเพื่อให้สมดุลกับ Status bar

                // 1. หัวข้อ Welcome Back (โค้ดเดิม)
                Text(
                  'Welcome Back',
                  style: GoogleFonts.kanit(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing\nelit. Diam maecenas mi non sed ut odio. Non, justo,\nsed facilisi et.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.kanit(
                    fontSize: 12.0,
                    color: Colors.grey[700],
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 45.0),

                // 2. ส่วนฟอร์มกรอกข้อมูล (โค้ดเดิม)
                _buildSimpleTextField('Username , Email & Phone Number'),
                const SizedBox(height: 15.0),
                _buildSimpleTextField('Password', isPassword: true),

                // 3. Forgot Password (โค้ดเดิม)
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Text(
                      'Forgot Password ?',
                      style: GoogleFonts.kanit(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15.0),

                // 4. ปุ่ม Sign in (โค้ดเดิม)
                SizedBox(
                  width: double.infinity,
                  height: 52.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const A01PageUi()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF794E7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      'Sign in',
                      style: GoogleFonts.kanit(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 35.0),

                // 5. Or Sign up With (โค้ดเดิม)
                Row(
                  children: [
                    const Expanded(
                        child: Divider(
                            thickness: 0.5, endIndent: 10, color: Colors.grey)),
                    Text(
                      'Or Sign up With',
                      style: GoogleFonts.kanit(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Expanded(
                        child: Divider(
                            thickness: 0.5, indent: 10, color: Colors.grey)),
                  ],
                ),

                const SizedBox(height: 25.0),

                // 6. ปุ่ม Social Icons (โค้ดเดิม)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _socialCircleButton('assets/images/google.png'),
                    const SizedBox(width: 15.0),
                    _socialCircleButton('assets/images/facebook.png'),
                    const SizedBox(width: 15.0),
                    _socialCircleButton('assets/images/apple-logo.png'),
                  ],
                ),

                const SizedBox(height: 30.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget สร้างช่องกรอกข้อมูล (โค้ดเดิม)
  Widget _buildSimpleTextField(String hint, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      style: const TextStyle(fontSize: 13.0),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.kanit(fontSize: 12.0, color: Colors.grey[500]),
        filled: true,
        fillColor: const Color(0xFFF5F5F5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
    );
  }

  // Widget สร้างปุ่ม Social วงกลม (โค้ดเดิม)
  Widget _socialCircleButton(String imagePath) {
    return Container(
      width: 48,
      height: 48,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 1.5),
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) =>
            const Icon(Icons.error, size: 18),
      ),
    );
  }
}
