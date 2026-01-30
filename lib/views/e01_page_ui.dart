import 'package:flutter/material.dart';
import 'package:flutter_iot_second_app/views/e02_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class E01PageUi extends StatefulWidget {
  const E01PageUi({super.key});

  @override
  State<E01PageUi> createState() => _E01PageUiState();
}

class _E01PageUiState extends State<E01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // ✅ เพิ่มส่วนปุ่มย้อนกลับไว้ด้านบนสุด
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new,
                        color: Colors.black, size: 20),
                    onPressed: () {
                      Navigator.pop(context); // กดย้อนกลับไปหน้า Home
                    },
                  ),
                ),
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                        height:
                            20), // ปรับระยะด้านบนลงเล็กน้อยเพราะมีปุ่มย้อนกลับแล้ว

                    // 2. Main Image (Fruit Splash)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(
                        'assets/images/healthy.png',
                        height: MediaQuery.of(context).size.height * 0.45,
                        fit: BoxFit.contain,
                      ),
                    ),

                    const SizedBox(height: 30),

                    // 3. Title - BERRY JUICE
                    Text(
                      'BERRY JUICE',
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 42,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.5,
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.orange.withOpacity(0.3),
                            offset: const Offset(2, 2),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 15),

                    // 4. Subtitle Text
                    Text(
                      'A "Moments of healthy sip\nThe best vitamin for your health',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.kanit(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        height: 1.2,
                      ),
                    ),

                    const SizedBox(height: 15),

                    // 5. Small Gray Text
                    Text(
                      'Teialon 16 symemeric horiazonial\nheight',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.kanit(
                        fontSize: 14,
                        color: Colors.grey[400],
                      ),
                    ),

                    const SizedBox(height: 60),

                    // 6. Explore Now Button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        height: 65,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFFFFC529), Color(0xFFF6921E)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.orange.withOpacity(0.4),
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
                                builder: (context) => const E02PageUi(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(width: 20),
                              Text(
                                'Explore Now',
                                style: GoogleFonts.kanit(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: 28,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
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
