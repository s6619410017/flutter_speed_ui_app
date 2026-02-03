import 'package:flutter/material.dart';
import 'd02_page_ui.dart';
import 'd03_page_ui.dart';

class D01PageUI extends StatelessWidget {
  const D01PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ===== BACKGROUND IMAGE (ไม่ครอป) =====
          Positioned.fill(
            child: Container(
              color: Colors.white, // สีพื้นหลัง กันขอบ
              child: Image.asset(
                'assets/icon/images/img.png',
                fit: BoxFit.contain, // << สำคัญมาก
                alignment: Alignment.topCenter,
              ),
            ),
          ),

          // ===== CONTENT =====
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const SizedBox(height: 500),

                  // ===== Logo =====
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icon/images/logo.png',
                        width: 80 ,
                        height: 80,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // ===== Text =====
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Fruzz',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'digital',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 100),

                  // ===== Login =====
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1C1F26),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const D02PageUI(),
                          ),
                        );
                      },
                      child: const Text('Login'),
                      
                    ),
                  ),

                  const SizedBox(height: 12),

                  // ===== Register =====
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const D03PageUI(),
                          ),
                        );
                      },
                      child: const Text('Register'),
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    'Continue as a guest',
                    style: TextStyle(color: Colors.teal),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
