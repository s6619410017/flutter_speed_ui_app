import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'e02_page_ui.dart';

class E01PageUI extends StatelessWidget {
  const E01PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// ===== BACKGROUND IMAGE (พอดีจอ ไม่ล้น ไม่ตัด) =====
          Positioned.fill(
            child: Image.asset(
              'assets/icon/images/32365 1.png',
              fit: BoxFit.contain, // 🔑 สำคัญมาก
              alignment: Alignment.topCenter,
            ),
          ),

          /// ===== CONTENT =====
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 500), // ดันลงจากรูป

                    /// ===== TITLE =====
                    Text(
                      'BERRY JUICE',
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.2,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(height: 8),

                    /// ===== SUBTITLE =====
                    Text(
                      'A “Moments of healthy sip”\nThe best vitamin for your health',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        height: 1.4,
                        color: Colors.grey.shade700,
                      ),
                    ),

                    const SizedBox(height: 32),

                    /// ===== GRADIENT BUTTON =====
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const E02PageUI(),
                          ),
                        );
                      },
                      child: Container(
                        width: 280,
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFFB703),
                              Color(0xFFFF8C00),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.orange.withOpacity(0.35),
                              blurRadius: 12,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Explore Now',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
