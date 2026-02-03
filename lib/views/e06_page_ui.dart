import 'package:flutter/material.dart';

class E06PageUI extends StatelessWidget {
  const E06PageUI({super.key});

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
                Positioned(
                  top: 50,
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3E5AB).withOpacity(0.7), // สีครีมอ่อน
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
                    'Create New Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Enter new password',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),

                  const SizedBox(height: 32),

                  /// ===== INPUT FIELDS =====
                  _field('Enter New password'),
                  _field('Confirm password'),

                  const SizedBox(height: 32),

                  /// ===== SUBMIT BUTTON =====
                  _button('Submit', () {
                    // จัดการการส่งข้อมูลที่นี่
                  }),
                  
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _field(String hint) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: TextField(
          obscureText: true,
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
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.orange, width: 1.5),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      );

  Widget _button(String text, VoidCallback onTap) => SizedBox(
        width: double.infinity,
        height: 55,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFBB03B), // สีส้มตามภาพ E02-E05
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

/// Clipper สำหรับส่วนโค้งที่สวยงาม (ใช้ตัวเดียวกับหน้าอื่นๆ)
class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 20); 
    path.quadraticBezierTo(
      size.width * 0.4,
      size.height + 30,
      size.width,
      size.height * 0.7,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}