import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ตรวจสอบชื่อไฟล์หน้า E03 และ E04 ของคุณและ import ให้ถูกต้อง
import 'e03_page_ui.dart';
import 'e04_page_ui.dart'; // เพิ่มการ import หน้า E04

class E02PageUi extends StatefulWidget {
  const E02PageUi({super.key});

  @override
  State<E02PageUi> createState() => _E02PageUiState();
}

class _E02PageUiState extends State<E02PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ส่วนหัวที่เป็นรูปภาพและปุ่มย้อนกลับ
            Stack(
              children: [
                Image.asset(
                  'assets/images/olo.jpg', // เปลี่ยนเป็นรูปส้มของคุณ
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new,
                          color: Colors.white, size: 20),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
            Text('Welcome back',
                style: GoogleFonts.kanit(
                    fontSize: 32, fontWeight: FontWeight.bold)),
            Text('Login to your account',
                style: GoogleFonts.kanit(fontSize: 18, color: Colors.grey)),

            const SizedBox(height: 30),

            // ช่องกรอก Email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter email or phone',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // ช่องกรอก Password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),

            // ลิงก์ลืมรหัสผ่าน
            Padding(
              padding: const EdgeInsets.only(right: 30, top: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const E04PageUi(), // ไปหน้า E04
                      ),
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.kanit(color: Colors.orange),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ปุ่ม Log In
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
                  ),
                  child: Text('Log In',
                      style: GoogleFonts.kanit(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
            ),

            const SizedBox(height: 20),
            Text('OR', style: GoogleFonts.kanit(fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),

            // ปุ่ม Social Media
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _socialIcon('assets/images/google.png'),
                const SizedBox(width: 20),
                _socialIcon('assets/images/facebook.png'),
                const SizedBox(width: 20),
                _socialIcon('assets/images/apple-logo.png'),
              ],
            ),

            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an Account? "),
                // เพิ่ม GestureDetector เพื่อให้กดเปลี่ยนหน้าได้
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const E03PageUi(),
                      ),
                    );
                  },
                  child: Text(
                    'Create Account',
                    style: GoogleFonts.kanit(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _socialIcon(String path) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade300)),
      child: Image.asset(path, width: 30, height: 30),
    );
  }
}
