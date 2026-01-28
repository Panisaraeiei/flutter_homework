import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'c03_page_ui.dart';
// ✅ 1. Import หน้า C01 สำหรับการย้อนกลับ (หรือใช้ Navigator.pop)
import 'c01_page_ui.dart';

class C02PageUi extends StatefulWidget {
  const C02PageUi({super.key});

  @override
  State<C02PageUi> createState() => _C02PageUiState();
}

class _C02PageUiState extends State<C02PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      // ✅ 2. ใช้ Stack เพื่อให้วางปุ่มย้อนกลับทับบนเนื้อหาหลักได้
      body: SafeArea(
        child: Stack(
          children: [
            // --- โค้ดเนื้อหาเดิมของคุณทั้งหมด ---
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    // Status Bar จำลอง
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
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

                    _buildInputLabel('Email'),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'ex: jon.smith@email.com',
                        hintStyle: GoogleFonts.kanit(color: Colors.grey[400]),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFF40C4FF), width: 2),
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

                    _buildInputLabel('Password'),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: '•••••••••',
                        filled: true,
                        fillColor: const Color(
                            0xFFF1F4FF), // ปรับให้สีเข้มขึ้นนิดหน่อยเพื่อให้เห็นชัด
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
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

            // ✅ 3. เพิ่มปุ่มย้อนกลับ (Back Button)
            Positioned(
              top: 50, // ปรับตำแหน่งให้อยู่ใต้ Status Bar เล็กน้อย
              left: 15,
              child: IconButton(
                onPressed: () {
                  // ย้อนกลับไปหน้า C01
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

  // ฟังก์ชันช่วยสร้าง Label (โค้ดเดิม)
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

  // ฟังก์ชันช่วยสร้าง Social Icon (โค้ดเดิม)
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
