import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
import 'e02_page_ui.dart';

class E03PageUI extends StatelessWidget {
  const E03PageUI({super.key});

  Future<void> _openTerms() async {
    final Uri url = Uri.parse('https://www.google.com/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ===== TOP IMAGE WITH UPDATED CURVE =====
            ClipPath(
              clipper: HeaderClipper(),
              child: Container(
                height: h * 0.35, // ปรับความสูงลงเล็กน้อยสำหรับหน้าลงทะเบียน
                width: double.infinity,
                child: Image.asset(
                  'assets/icon/images/Ellipse 1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const Text(
                    'Register',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Create your new account',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const SizedBox(height: 24),

                  /// ===== INPUT FIELDS =====
                  _field('Name'),
                  _field('E-mail'),
                  _field('Phone'),
                  _field('Password', isPassword: true),

                  const SizedBox(height: 10),

                  /// ===== TERMS & CONDITIONS =====
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black, fontSize: 13),
                      children: [
                        const TextSpan(text: 'By signing up you agree to our '),
                        TextSpan(
                          text: 'Terms & Conditions',
                          style: const TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = _openTerms,
                        ),
                        const TextSpan(text: '\nand '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: const TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = _openTerms,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  /// ===== SIGN UP BUTTON =====
                  _button('Sign Up', () {}),

                  const SizedBox(height: 20),

                  /// ===== OR DIVIDER =====
                  Row(
                    children: const [
                      Expanded(child: Divider(thickness: 1)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('OR', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Expanded(child: Divider(thickness: 1)),
                    ],
                  ),

                  const SizedBox(height: 20),

                  _socialRow(),

                  const SizedBox(height: 25),

                  /// ===== FOOTER (GO TO LOGIN) =====
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an Account? "),
                      GestureDetector(
                        onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => const E02PageUI()),
                        ),
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.orange,
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
          ],
        ),
      ),
    );
  }

  Widget _field(String hint, {bool isPassword = false}) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.grey, width: 0.5),
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
            backgroundColor: const Color(0xFFFBB03B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 0,
          ),
          onPressed: onTap,
          child: Text(
            text,
            style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      );

  Widget _socialRow() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _social('primary.png'),
          const SizedBox(width: 20),
          _social('XMLID_28_.png'),
          const SizedBox(width: 20),
          _social('cib_apple.png'),
        ],
      );

  Widget _social(String asset) => Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Image.asset('assets/icon/images/$asset', width: 28, height: 28),
      );
}

/// ใช้ Clipper ตัวเดียวกับหน้า Login ที่แก้ไขมุมซ้ายแหว่งแล้ว
class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 20); // มุมซ้ายลึกขึ้น ไม่แหว่ง
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