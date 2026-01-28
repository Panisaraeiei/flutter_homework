import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class B03PageUi extends StatefulWidget {
  const B03PageUi({super.key});

  @override
  State<B03PageUi> createState() => _B03PageUiState();
}

class _B03PageUiState extends State<B03PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 164, 214, 239),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const SizedBox(height: 50.0),
              // หัวข้อหลัก
              Text(
                'Create Account',
                style: GoogleFonts.kanit(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1E48B0),
                ),
              ),
              const SizedBox(height: 10.0),
              // ข้อความรายละเอียด
              Text(
                'Create an account so you can explore all the\nexisting jobs',
                textAlign: TextAlign.center,
                style: GoogleFonts.kanit(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 50.0),

              // ช่องกรอก Email
              _buildTextField('Email'),
              const SizedBox(height: 20.0),

              // ช่องกรอก Password
              _buildTextField('Password', isPassword: true),
              const SizedBox(height: 20.0),

              // ช่องกรอก Confirm Password
              _buildTextField('Confirm Password', isPassword: true),
              const SizedBox(height: 40.0),

              // ปุ่ม Sign up (สีน้ำเงินเข้มพร้อมเงา)
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF1E48B0).withOpacity(0.3),
                      blurRadius: 15,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // ใส่ฟังก์ชันการทำงานสมัครสมาชิกที่นี่
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E48B0),
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    'Sign up',
                    style: GoogleFonts.kanit(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30.0),

              // ✅ ปุ่ม Already have an account (กดแล้วกลับไป B02)
              GestureDetector(
                onTap: () {
                  Navigator.pop(
                      context); // ใช้ pop เพื่อย้อนกลับไปหน้าก่อนหน้า (B02)
                },
                child: Text(
                  'Already have an account',
                  style: GoogleFonts.kanit(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
              ),

              const SizedBox(height: 60.0),

              // ส่วน Or continue with
              Text(
                'Or continue with',
                style: GoogleFonts.kanit(
                  color: const Color(0xFF1E48B0),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 25.0),

              // ปุ่ม Social Media Icons (Google, Facebook, Apple)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialButton('assets/images/google.png'),
                  const SizedBox(width: 15.0),
                  _socialButton('assets/images/facebook.png'),
                  const SizedBox(width: 15.0),
                  _socialButton('assets/images/apple-logo.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget ช่วยสร้าง TextField ให้ดีไซน์เหมือนในรูป
  Widget _buildTextField(String hint, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.kanit(color: Colors.grey[600]),
        filled: true,
        fillColor: const Color(0xFFF1F4FF), // สีพื้นหลังฟ้าอ่อนตามรูป
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Color(0xFF1E48B0), width: 2),
        ),
      ),
    );
  }

  // Widget ช่วยสร้างปุ่ม Social
  Widget _socialButton(String imagePath) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F1F1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Image.asset(
        imagePath,
        height: 24.0,
        errorBuilder: (context, error, stackTrace) =>
            const Icon(Icons.error, size: 24),
      ),
    );
  }
}
