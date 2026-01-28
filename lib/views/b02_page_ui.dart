import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'b03_page_ui.dart';
// ✅ Import หน้า B01 เพื่อใช้ในปุ่มย้อนกลับ (หรือใช้ Navigator.pop ก็ได้)
import 'b01_page_ui.dart';

class B02PageUi extends StatefulWidget {
  const B02PageUi({super.key});

  @override
  State<B02PageUi> createState() => _B02PageUiState();
}

class _B02PageUiState extends State<B02PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 179, 179),
      body: SafeArea(
        // ✅ ใช้ Stack เพื่อวางปุ่มย้อนกลับลอยทับเนื้อหาหลัก
        child: Stack(
          children: [
            // --- โค้ดส่วนเนื้อหาเดิมของคุณทั้งหมด ---
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  const SizedBox(height: 60.0),
                  // 1. หัวข้อ Login here
                  Text(
                    'Login here',
                    style: GoogleFonts.kanit(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1E48B0),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  // 2. ข้อความต้อนรับ
                  Text(
                    "Welcome back you've\nbeen missed!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.kanit(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 50.0),

                  // 3. ช่องกรอก Email
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: const Color(0xFFF1F4FF),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                            color: Color(0xFF1E48B0), width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                            color: Color(0xFF1E48B0), width: 2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),

                  // 4. ช่องกรอก Password
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: const Color(0xFFF1F4FF),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                            color: Color(0xFF1E48B0), width: 2),
                      ),
                    ),
                  ),

                  // 5. ลิงก์ลืมรหัสผ่าน
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot your password?',
                        style: GoogleFonts.kanit(
                          color: const Color(0xFF1E48B0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),

                  // 6. ปุ่ม Sign in (มีเงา)
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
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1E48B0),
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Text(
                        'Sign in',
                        style: GoogleFonts.kanit(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),

                  // 7. ลิงก์สร้างบัญชีใหม่
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const B03PageUi(),
                        ),
                      );
                    },
                    child: Text(
                      'Create new account',
                      style: GoogleFonts.kanit(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50.0),

                  // 8. ส่วน Or continue with
                  Text(
                    'Or continue with',
                    style: GoogleFonts.kanit(
                      color: const Color(0xFF1E48B0),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20.0),

                  // 9. ปุ่ม Social Login (Google, Facebook, Apple)
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

            // ✅ เพิ่มปุ่มย้อนกลับ (Back Button) ไปหน้า B01
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                onPressed: () {
                  // ใช้ Navigator.pop เพื่อย้อนกลับไปหน้าก่อนหน้า (B01)
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0xFF1E48B0),
                  size: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget ตัวช่วยสร้างปุ่มไอคอน Social
  Widget _socialButton(String imagePath) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: const Color(0xFFECECEC),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Image.asset(
        imagePath,
        height: 25.0,
        errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
      ),
    );
  }
}
