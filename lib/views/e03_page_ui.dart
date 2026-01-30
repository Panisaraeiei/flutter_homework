import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class E03PageUi extends StatefulWidget {
  const E03PageUi({super.key});

  @override
  State<E03PageUi> createState() => _E03PageUiState();
}

class _E03PageUiState extends State<E03PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ส่วนหัวรูปภาพแบบโค้ง
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                  ),
                  child: Image.asset(
                    'assets/images/olo.jpg', // ใช้รูปเดียวกับหน้า E02
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new,
                          color: Colors.white, size: 20),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            Text(
              'Register',
              style:
                  GoogleFonts.kanit(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text(
              'Create your new account',
              style: GoogleFonts.kanit(fontSize: 16, color: Colors.grey[600]),
            ),

            const SizedBox(height: 25),

            // ฟิลด์กรอกข้อมูล
            _buildTextField('Name'),
            const SizedBox(height: 15),
            _buildTextField('E-mail'),
            const SizedBox(height: 15),
            _buildTextField('Phone'),
            const SizedBox(height: 15),
            _buildTextField('Password', isPassword: true),

            const SizedBox(height: 20),

            // ข้อความยอมรับเงื่อนไข
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.kanit(color: Colors.black, fontSize: 13),
                  children: [
                    const TextSpan(text: 'By signing up you agree to our '),
                    TextSpan(
                      text: 'Terms & Conditions',
                      style: GoogleFonts.kanit(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(text: '\nand '),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: GoogleFonts.kanit(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            // ปุ่ม Sign Up
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF6921E),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 0,
                  ),
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.kanit(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            Text('OR',
                style: GoogleFonts.kanit(
                    fontWeight: FontWeight.bold, color: Colors.black)),
            const SizedBox(height: 20),

            // ปุ่ม Social Media
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _socialIcon('assets/images/google.png'),
                const SizedBox(width: 25),
                _socialIcon('assets/images/facebook.png'),
                const SizedBox(width: 25),
                _socialIcon('assets/images/apple-logo.png'),
              ],
            ),

            const SizedBox(height: 25),

            // ลิงก์กลับไปหน้า Log In
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an Account? '),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    'Log In',
                    style: GoogleFonts.kanit(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // วิจเจ็ตสำหรับสร้าง TextField
  Widget _buildTextField(String hint, {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: GoogleFonts.kanit(color: Colors.grey[400]),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.orange),
          ),
        ),
      ),
    );
  }

  // วิจเจ็ตสำหรับสร้างไอคอนโซเชียล
  Widget _socialIcon(String path) {
    return InkWell(
      onTap: () {},
      child: Image.asset(path, width: 35, height: 35),
    );
  }
}
