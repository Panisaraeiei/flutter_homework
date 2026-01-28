import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class C03PageUi extends StatefulWidget {
  const C03PageUi({super.key});

  @override
  State<C03PageUi> createState() => _C03PageUiState();
}

class _C03PageUiState extends State<C03PageUi> {
  bool isChecked = false; // สำหรับ Checkbox terms & policy

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                // --- 1. ส่วน Status Bar จำลอง (เวลา, WiFi, แบตเตอรี่) ---
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

                // --- 2. โลโก้ H ขนาดเล็กมุมขวา ---
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xFF00C853), width: 1.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'H',
                        style: GoogleFonts.kanit(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF00C853),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // --- 3. หัวข้อ Create Account ---
                Text(
                  'Create your account',
                  style: GoogleFonts.kanit(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 30),

                // --- 4. แบบฟอร์มกรอกข้อมูล ---
                _buildInputLabel('Name'),
                _buildTextField('ex: jon smith'),

                const SizedBox(height: 15),
                _buildInputLabel('Email'),
                _buildTextField('ex: jon.smith@email.com'),

                const SizedBox(height: 15),
                _buildInputLabel('Password'),
                _buildTextField('*********', obscure: true),

                const SizedBox(height: 15),
                _buildInputLabel('Confirm password'),
                _buildTextField('*********', obscure: true),

                const SizedBox(height: 15),

                // --- 5. Checkbox Terms & Policy ---
                Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Checkbox(
                        value: isChecked,
                        activeColor: const Color(0xFF00C853),
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: GoogleFonts.kanit(
                              color: Colors.black, fontSize: 13),
                          children: const [
                            TextSpan(text: 'I understood the '),
                            TextSpan(
                              text: 'terms & policy.',
                              style: TextStyle(
                                  color: Color(0xFF00C853),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // --- 6. ปุ่ม SIGN UP (แก้ไข: เพิ่มโค้ดกลับไปหน้า C02) ---
                ElevatedButton(
                  onPressed: () {
                    // กลับไปยังหน้าก่อนหน้า (C02)
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00C853),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'SIGN UP',
                    style: GoogleFonts.kanit(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                Text('or sign up with',
                    style: GoogleFonts.kanit(color: Colors.grey)),
                const SizedBox(height: 20),

                // --- 7. Social Buttons ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _socialIcon('assets/images/google.png'),
                    const SizedBox(width: 15),
                    _socialIcon('assets/images/facebook.png'),
                    const SizedBox(width: 15),
                    _socialIcon('assets/images/tert.png'),
                  ],
                ),

                const SizedBox(height: 30),

                // --- 8. ลิงก์กลับไปหน้า SIGN IN ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an account? ", style: GoogleFonts.kanit()),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Text(
                        'SIGN IN',
                        style: GoogleFonts.kanit(
                          color: const Color(0xFF00C853),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ฟังก์ชันสร้าง Label ของช่องกรอกข้อมูล
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

  // ฟังก์ชันสร้างช่อง TextField
  Widget _buildTextField(String hint, {bool obscure = false}) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.kanit(color: Colors.grey[400], fontSize: 14),
        filled: true,
        fillColor: const Color(0xFFF8F8F8),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  // ฟังก์ชันสร้างปุ่ม Social
  Widget _socialIcon(String path) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(path,
          width: 22,
          height: 22,
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.broken_image, size: 22)),
    );
  }
}
