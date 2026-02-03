import 'package:flutter/material.dart';
import 'c03_page_ui.dart';

class C02PageUI extends StatelessWidget {
  const C02PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white, // พื้นขาว
                borderRadius: BorderRadius.circular(15), // โค้งแบบ Figma
                border: Border.all(
                  color: Colors.green,
                  width: 2, // ความหนาขอบ
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'assets/icon/images/Vector.png',
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Sign in your account',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 8),
            _buildTextField('ex:Chawakorn@gmail.com'),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Password',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 8),
            _buildTextField('*********', isPassword: true),
            const SizedBox(height: 30),
            _buildGreenButton('SIGN IN'),
            const SizedBox(height: 24),
            const Text(
              'or sign in with',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSocialButton('assets/icon/images/XMLID_28_.png'),
                const SizedBox(width: 16),
                _buildSocialButton('assets/icon/images/primary.png'),
                const SizedBox(width: 16),
                _buildSocialButton('assets/icon/images/primary (1).png'),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const C03PageUI(),
                      ),
                    );
                  },
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/* =======================
   Widgets (ต้องอยู่ท้ายไฟล์)
   ======================= */

Widget _buildTextField(String hint, {bool isPassword = false}) {
  return TextField(
    obscureText: isPassword,
    decoration: InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: Colors.grey.shade100,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    ),
  );
}

Widget _buildSocialButton(String imagePath) {
  return Container(
    width: 52,
    height: 52,
    decoration: BoxDecoration(
      color: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(12),
    ),
    child: IconButton(
      onPressed: () {
        // TODO: social login
      },
      icon: Image.asset(
        imagePath,
        width: 24,
        height: 24,
      ),
    ),
  );
}

Widget _buildGreenButton(String text) {
  return SizedBox(
    width: double.infinity,
    height: 48,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    ),
  );
}
