import 'package:flutter/material.dart';
import 'e05_page_ui.dart';
import 'e03_page_ui.dart'; // สำหรับปุ่ม Create Account

class E04PageUI extends StatelessWidget {
  const E04PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ===== TOP IMAGE WITH CURVE & BACK BUTTON =====
            Stack(
              children: [
                ClipPath(
                  clipper: HeaderClipper(),
                  child: Container(
                    height: h * 0.42,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/icon/images/Ellipse 1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // ปุ่มย้อนกลับวงกลม
                Positioned(
                  top: 50,
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3E5AB).withOpacity(0.7), // สีครีมอ่อนตามรูป
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.black54),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Forgot your password?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Enter email address',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  
                  const SizedBox(height: 32),

                  /// ===== INPUT FIELD =====
                  _field('Email'),

                  const SizedBox(height: 32),

                  /// ===== SEND CODE BUTTON =====
                  _button('Send code', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const E05PageUI()),
                    );
                  }),

                  const SizedBox(height: 20),

                  /// ===== FOOTER =====
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an Account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => const E03PageUI()),
                          );
                        },
                        child: const Text(
                          'Create Account',
                          style: TextStyle(
                            color: Colors.orange,
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
          ],
        ),
      ),
    );
  }

  Widget _field(String hint) => TextField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.grey, width: 0.5),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      );

  Widget _button(String text, VoidCallback onTap) => SizedBox(
        width: double.infinity,
        height: 55,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFBB03B), // สีส้มสว่างตาม UI
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 0,
          ),
          onPressed: onTap,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18, 
              color: Colors.white, 
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      );
}

/// Clipper ที่แก้ปัญหามุมซ้ายแหว่ง ให้โค้งสวยรับกับทุกหน้า
