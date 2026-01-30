import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'b02_page_ui.dart';
import 'b03_page_ui.dart';
// ✅ Import หน้า Home (ตรวจสอบชื่อไฟล์ให้ถูกต้อง)
import 'home_ui.dart';

class B01PageUi extends StatefulWidget {
  const B01PageUi({super.key});

  @override
  State<B01PageUi> createState() => _B01PageUiState();
}

class _B01PageUiState extends State<B01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ✅ 1. เปลี่ยนพื้นหลังหลักเป็นสีฟ้าเพื่อให้ขอบเต็มจอไม่มีสีขาวแทรก
      backgroundColor: const Color.fromARGB(255, 14, 204, 221),
      body: SafeArea(
        child: Container(
          // ✅ 2. ใช้ขอบสีฟ้าหนาๆ ชิดขอบจอ
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 14, 204, 221),
              width: 12.0, // ความหนาของขอบ
            ),
          ),
          child: ClipRRect(
            // ✅ 3. ทำให้มุมเนื้อหาสีชมพูโค้งมนเหมือนหน้าจอโทรศัพท์
            borderRadius: BorderRadius.circular(30.0),
            child: Scaffold(
              backgroundColor: Colors.blue[50], // พื้นหลังเนื้อหาเดิม
              // ✅ 4. Stack และเนื้อหาเดิมของคุณทั้งหมด (ห้ามลบ/ห้ามเปลี่ยน)
              body: Stack(
                children: [
                  // --- เนื้อหาเดิมทั้งหมด ---
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 50.0),
                        // 1. รูปภาพด้านบน
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Image.asset(
                            'assets/images/job-seeker.png',
                            height: MediaQuery.of(context).size.height * 0.3,
                            fit: BoxFit.contain,
                          ),
                        ),

                        const SizedBox(height: 40.0),

                        // 2. ข้อความหัวข้อ
                        Text(
                          'Discover Your\nDream Job here',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.kanit(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 143, 170, 236),
                          ),
                        ),

                        const SizedBox(height: 15.0),

                        // 3. ข้อความรายละเอียด
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Text(
                            'Explore all the existing job roles based on your interest and study major',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.kanit(
                              fontSize: 14.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),

                        const SizedBox(height: 80.0),

                        // 4. ส่วนของปุ่ม (Login และ Register)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35.0),
                          child: Row(
                            children: [
                              // --- ปุ่ม Login ---
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(
                                                255, 94, 129, 217)
                                            .withOpacity(0.3),
                                        blurRadius: 15,
                                        offset: const Offset(0, 8),
                                      ),
                                    ],
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const B02PageUi(),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 14, 204, 221),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      elevation: 0,
                                    ),
                                    child: Text(
                                      'Login',
                                      style: GoogleFonts.kanit(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(width: 20.0),

                              // --- ปุ่ม Register ---
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const B03PageUi(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20.0),
                                    child: Center(
                                      child: Text(
                                        'Register',
                                        style: GoogleFonts.kanit(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30.0),
                      ],
                    ),
                  ),

                  // ✅ 5. ปุ่มย้อนกลับ (เดิม)
                  Positioned(
                    top: 10,
                    left: 10,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeUi()),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Color.fromARGB(255, 15, 4, 0),
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
