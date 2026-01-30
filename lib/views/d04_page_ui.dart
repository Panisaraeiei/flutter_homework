import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'd02_page_ui.dart'; // สำหรับปุ่ม Login
import 'd05_page_ui.dart'; // สำหรับปุ่ม Send Code

class D04PageUi extends StatefulWidget {
  const D04PageUi({super.key});

  @override
  State<D04PageUi> createState() => _D04PageUiState();
}

class _D04PageUiState extends State<D04PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 241, 164),
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
                      'Forgot Password?',
                      style: GoogleFonts.urbanist(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1E232C),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Don't worry! It occurs. Please enter the email address linked with your account.",
                      style: GoogleFonts.urbanist(
                        fontSize: 16,
                        color: const Color(0xFF6A707C),
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 35),

                    // 4. Email TextField
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: GoogleFonts.urbanist(
                            color: const Color(0xFF8391A1)),
                        fillColor: const Color(0xFFF7F8F9),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFF35C2C1)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    // 5. Send Code Button -> ไปหน้า D05
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const D05PageUi()),
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
                          'Send Code',
                          style: GoogleFonts.urbanist(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),

            // 6. Footer: Remember Password? Login -> กลับไปหน้า D02
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Remember Password? ",
                    style: GoogleFonts.urbanist(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF1E232C),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const D02PageUi()),
                      );
                    },
                    child: Text(
                      'Login',
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
          ],
        ),
      ),
    );
  }
}
