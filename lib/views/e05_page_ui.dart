import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// นำเข้าหน้า E06 เพื่อให้เรียกใช้งานได้
import 'e06_page_ui.dart';

class E05PageUi extends StatefulWidget {
  const E05PageUi({super.key});

  @override
  State<E05PageUi> createState() => _E05PageUiState();
}

class _E05PageUiState extends State<E05PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const SizedBox(height: 20),
                // ส่วนหัวที่มีปุ่มย้อนกลับ และ Title
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFDEB93).withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new,
                            color: Color(0xFFF6921E), size: 20),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                          'OTP Verification',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 45), // เพื่อให้ข้อความอยู่กลาง
                  ],
                ),

                const SizedBox(height: 40),

                // รูปภาพประกอบ (Illustration)
                Image.asset(
                  'assets/images/authenticity.png',
                  height: 250,
                  fit: BoxFit.contain,
                ),

                const SizedBox(height: 40),

                // ข้อความอธิบาย
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter OTP',
                        style: GoogleFonts.kanit(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'An 4 digit code has been sent to your\nemail',
                        style: GoogleFonts.kanit(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // ช่องกรอก OTP 4 ช่อง
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _otpTextField(),
                    _otpTextField(),
                    _otpTextField(),
                    _otpTextField(),
                  ],
                ),

                const SizedBox(height: 25),

                // ข้อความนับเวลาถอยหลัง
                RichText(
                  text: TextSpan(
                    style:
                        GoogleFonts.kanit(color: Colors.black54, fontSize: 16),
                    children: [
                      const TextSpan(text: 'You should receive the OTP in '),
                      TextSpan(
                        text: '30 Second',
                        style:
                            GoogleFonts.kanit(color: const Color(0xFFF6921E)),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),

                // ปุ่ม Verify เพื่อไปหน้า E06
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      // แก้ไข: ปลดคอมเมนต์และเรียกใช้งาน Navigator เพื่อไปหน้า E06
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const E06PageUi(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF6921E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      'Verify',
                      style: GoogleFonts.kanit(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget สำหรับสร้างช่องกรอก OTP
  Widget _otpTextField() {
    return SizedBox(
      width: 65,
      height: 65,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          counterText: "",
          filled: true,
          fillColor: Colors.grey.shade200,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xFFF6921E), width: 2),
          ),
        ),
      ),
    );
  }
}
