import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'c03_page_ui.dart';
import 'c01_page_ui.dart';

class C02PageUi extends StatefulWidget {
  const C02PageUi({super.key});

  @override
  State<C02PageUi> createState() => _C02PageUiState();
}

class _C02PageUiState extends State<C02PageUi> {
  @override
  Widget build(BuildContext context) {
    // กำหนดสีพื้นหลังที่ต้องการใช้ทั่วทั้งหน้าจอ
    Color bgColor = Colors.purple[50]!;

    return Scaffold(
      // ✅ 1. เปลี่ยนพื้นหลังหลักเป็นสีม่วงอ่อนให้เต็มหน้าจอ
      backgroundColor: bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            // ส่วนของเนื้อหาหลัก
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    // Status Bar จำลอง
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '9:19',
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

                    const SizedBox(height: 40),

                    // โลโก้ตัว H
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xFF00C853), width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'H',
                          style: GoogleFonts.kanit(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF00C853),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 40),

                    Text(
                      'Sign in your account',
                      style: GoogleFonts.kanit(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(height: 40),

                    // ช่องกรอก Email
                    _buildInputLabel('Email'),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'ex: jon.smith@email.com',
                        hintStyle: GoogleFonts.kanit(color: Colors.grey[400]),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFF00C853), width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // ช่องกรอก Password
                    _buildInputLabel('Password'),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: '•••••••••',
                        hintStyle: GoogleFonts.kanit(color: Colors.grey[400]),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFF00C853), width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                    const SizedBox(height: 40),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const C03PageUi(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00C853),
                        minimumSize: const Size(double.infinity, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'SIGN IN',
                        style: GoogleFonts.kanit(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const SizedBox(height: 25),
                    Text('or sign in with',
                        style: GoogleFonts.kanit(color: Colors.grey)),
                    const SizedBox(height: 25),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _socialIcon('assets/images/google.png'),
                        const SizedBox(width: 20),
                        _socialIcon('assets/images/facebook.png'),
                        const SizedBox(width: 20),
                        _socialIcon('assets/images/tert.png'),
                      ],
                    ),

                    const SizedBox(height: 50),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? ",
                            style: GoogleFonts.kanit()),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const C03PageUi()),
                            );
                          },
                          child: Text(
                            'SIGN UP',
                            style: GoogleFonts.kanit(
                              color: const Color(0xFF00C853),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            // ปุ่มย้อนกลับ (Back Button)
            Positioned(
              top: 50,
              left: 15,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputLabel(String label) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Text(
          label,
          style: GoogleFonts.kanit(color: Colors.grey[600], fontSize: 14),
        ),
      ),
    );
  }

  Widget _socialIcon(String path) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        path,
        width: 25,
        height: 25,
        errorBuilder: (context, error, stackTrace) =>
            const Icon(Icons.error, size: 25),
      ),
    );
  }
}
