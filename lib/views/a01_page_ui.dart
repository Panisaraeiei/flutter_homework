import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'a02_page_ui.dart';
import 'home_ui.dart';

class A01PageUi extends StatefulWidget {
  const A01PageUi({super.key});

  @override
  State<A01PageUi> createState() => _A01PageUiState();
}

class _A01PageUiState extends State<A01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ส่วนบน: พื้นหลังชมพูโค้งพร้อมรูปภาพ (เพิ่ม Stack เพื่อใส่ปุ่มย้อนกลับ)
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF794E7),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/boy.png',
                      width: 280.0,
                      errorBuilder: (context, error, stackTrace) => const Icon(
                          Icons.image_not_supported,
                          size: 100,
                          color: Colors.white),
                    ),
                  ),
                ),

                // ✅ เพิ่มปุ่มย้อนกลับไปหน้า HomeUi ที่มุมซ้ายบน
                Positioned(
                  top: 40,
                  left: 20,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeUi()),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30.0),

            // ส่วนข้อความหัวข้อและรายละเอียด (โค้ดเดิม)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  Text(
                    'Discover Your\nOwn Dream House',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.kanit(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF333333),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.kanit(
                      fontSize: 14.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40.0),

            // ส่วนปุ่มเลือก Sign in หรือ Register (โค้ดเดิม)
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
              child: Container(
                height: 60.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeUi(),
                            ),
                          );
                        },
                        borderRadius: BorderRadius.circular(15.0),
                        child: Container(
                          margin: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF794E7),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Center(
                            child: Text(
                              'Sign in',
                              style: GoogleFonts.kanit(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const A02PageUi(),
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            'Register',
                            style: GoogleFonts.kanit(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
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
}
