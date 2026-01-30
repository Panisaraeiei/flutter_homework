import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ✅ เพิ่ม Import หน้า D07 (Password Changed)
import 'd07_page_ui.dart';

class D06PageUi extends StatefulWidget {
  const D06PageUi({super.key});

  @override
  State<D06PageUi> createState() => _D06PageUiState();
}

class _D06PageUiState extends State<D06PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 241, 164),
      body: SafeArea(
        child: Column(
          children: [
            // 1. Mock Status Bar (9:41, WiFi, Battery)
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
                      'Create new password',
                      style: GoogleFonts.urbanist(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1E232C),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Your new password must be unique from those previously used.",
                      style: GoogleFonts.urbanist(
                        fontSize: 16,
                        color: const Color(0xFF8391A1),
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 35),

                    // 4. New Password Input
                    _buildPasswordField('New Password'),

                    const SizedBox(height: 15),

                    // 5. Confirm Password Input
                    _buildPasswordField('Confirm Password'),

                    const SizedBox(height: 35),

                    // 6. Reset Password Button
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          // ✅ เพิ่ม Navigator เพื่อไปยังหน้า D07 เมื่อกดปุ่ม Reset Password
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const D07PageUi(),
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
                          'Reset Password',
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

  // ฟังก์ชันสร้างช่องรหัสผ่านตามดีไซน์
  Widget _buildPasswordField(String hint) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.urbanist(color: const Color(0xFF8391A1)),
        fillColor: const Color(0xFFF7F8F9),
        filled: true,
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
}
