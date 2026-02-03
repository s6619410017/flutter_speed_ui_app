import 'package:flutter/material.dart';
import 'c02_page_ui.dart';

class C03PageUI extends StatelessWidget {
  const C03PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),

            // ===== LOGO =====
            Center(child: _buildLogo()),

            const SizedBox(height: 24),

            // ===== TITLE =====
            const Center(
              child: Text(
                'Create your account',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 32),

            // ===== NAME =====
            const Text(
              'NAME',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 6),
            _buildTextField('ex: Chawakorn Aiamnoi'),

            const SizedBox(height: 16),

            const Text(
              'EMAIL',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 6),
            _buildTextField('ex: chawakorn@gmail.com'),

            const SizedBox(height: 16),

            const Text(
              'PASSWORD',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 6),
            _buildTextField('**********', isPassword: true),

            const SizedBox(height: 16),

            const Text(
              'CONFIRM PASSWORD',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 6),
            _buildTextField('**********', isPassword: true),

            const SizedBox(height: 24),
            const SizedBox(height: 16),
            const TermsCheckbox(),
            const SizedBox(height: 24),
            _buildGreenButton('SIGN UP'),

            const SizedBox(height: 24),

            const Center(
              child: Text(
                'or sign in with',
                style: TextStyle(color: Colors.grey),
              ),
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

            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const C02PageUI(),
                      ),
                    );
                  },
                  child: const Text(
                    "SIGN IN",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

/* =======================
   Widgets
   ======================= */

Widget _buildLogo() {
  return Container(
    width: 56,
    height: 56,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.green, width: 2),
      borderRadius: BorderRadius.circular(16),
      color: Colors.white,
    ),
    child: Image.asset(
      'assets/icon/images/Vector.png',
      fit: BoxFit.contain,
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
      onPressed: () {},
      icon: Image.asset(
        imagePath,
        width: 24,
        height: 24,
      ),
    ),
  );
}

Widget _buildTextField(String hint, {bool isPassword = false}) {
  return TextField(
    obscureText: isPassword,
    decoration: InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: const Color(0xFFF5F5F5),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
    ),
  );
}

Widget _buildGreenButton(String text) {
  return SizedBox(
    width: double.infinity,
    height: 52,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}

class TermsCheckbox extends StatefulWidget {
  const TermsCheckbox({super.key});

  @override
  State<TermsCheckbox> createState() => _TermsCheckboxState();
}

class _TermsCheckboxState extends State<TermsCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 18,
          height: 18,
          child: Checkbox(
            value: isChecked,
            activeColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            side: const BorderSide(
              color: Colors.green,
              width: 1.5,
            ),
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black87,
              ),
              children: [
                const TextSpan(text: 'I understood the '),
                TextSpan(
                  text: 'terms & policy.',
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                  ),
                  // 👇 ถ้าจะทำให้กดได้
                  // recognizer: TapGestureRecognizer()
                  //   ..onTap = () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
