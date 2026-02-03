import 'package:flutter/material.dart';
import 'b02_page_ui.dart';
import 'b03_page_ui.dart';

class B01PageUI extends StatelessWidget {
  const B01PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // 🔵 วงกลมด้านหลัง (บนซ้าย)
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/icon/images/Ellipse 1 (1).png',
              width: 2000,
            ),
          ),

          // 🔵 วงกลมด้านหลัง (ขวาล่าง)
          Positioned(
            bottom: -60,
            right: -40,
            child: Image.asset(
              'assets/icon/images/Ellipse 2.png',
              width: 200,
            ),
          ),

          // 🔹 เนื้อหาหลัก
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const SizedBox(height: 40),

                  // รูปหลัก
                  Image.asset(
                    'assets/icon/images/welcome image.png',
                    height: 360,
                  ),

                  const SizedBox(height: 32),

                  const Text(
                    'Discover Your\nDream Job here',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35,
                      color: Color.fromARGB(255, 17, 0, 255),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    'Explore all the most exciting jobs roles\nbased on your interest and study major',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),

                  const Spacer(),

                  Row(
                    children: [
                      Expanded(
                        child: _button(
                          title: 'Login',
                          isPrimary: true,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const B02PageUI(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _button(
                          title: 'Register',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const B03PageUI(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _button({
    required String title,
    bool isPrimary = false,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          color: isPrimary ? const Color(0xFF1E3AFF) : Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: const Color(0xFF1E3AFF)),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: isPrimary ? Colors.white : const Color(0xFF1E3AFF),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
