import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ✅ เพิ่ม Import หน้า D06
import 'd06_page_ui.dart';

class D05PageUi extends StatefulWidget {
  const D05PageUi({super.key});

  @override
  State<D05PageUi> createState() => _D05PageUiState();
}

class _D05PageUiState extends State<D05PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: SafeArea(
        child: Column(
          children: [
            // 1. Mock Status Bar (Time, WiFi, Battery) ตามรูป
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
                    // 2. Back Button
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

                    // 3. Header Text
                    Text(
                      'OTP Verification',
                      style: GoogleFonts.urbanist(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1E232C),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Enter the verification code we just sent on your email address.",
                      style: GoogleFonts.urbanist(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 0, 5, 10),
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 35),

                    // 4. OTP Input Fields (4 Boxes)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _otpTextField(first: true, last: false),
                        _otpTextField(first: false, last: false),
                        _otpTextField(first: false, last: false),
                        _otpTextField(first: false, last: true),
                      ],
                    ),

                    const SizedBox(height: 35),

                    // 5. Verify Button
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          // ✅ เพิ่ม Navigator เพื่อไปยังหน้า D06 เมื่อกดปุ่ม Verify
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const D06PageUi(),
                            ),
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
                          'Verify',
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

  // ฟังก์ชันสร้างช่องกรอก OTP ทีละช่อง
  Widget _otpTextField({required bool first, last}) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: const Color(0xFFF7F8F9),
        border: Border.all(color: const Color(0xFFE8ECF4)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
        showCursor: false,
        readOnly: false,
        textAlign: TextAlign.center,
        style: GoogleFonts.urbanist(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF1E232C),
        ),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: const InputDecoration(
          counterText: "",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
