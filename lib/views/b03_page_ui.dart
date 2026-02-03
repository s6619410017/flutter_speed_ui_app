import 'package:flutter/material.dart';
import 'b02_page_ui.dart';

class B03PageUI extends StatelessWidget {
  const B03PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Create Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 38, 0, 252),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Create an account so you can explore all the jobs',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            _field('Email'),
            const SizedBox(height: 16),
            _field('Password', isPassword: true),
            const SizedBox(height: 16),
            _field('Confirm Password', isPassword: true),

            const SizedBox(height: 32),

            _primaryButton('Sign up'),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: Text(
                'Already have an account',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            const Spacer(),

            // 👇 ส่ง context เข้าไป
            _social(context),
          ],
        ),
      ),
    );
  }

  // ------------------ ช่องกรอก ------------------
  Widget _field(String hint, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: const Color(0xFFF5F6FA),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  // ------------------ ปุ่มหลัก ------------------
  Widget _primaryButton(String title) {
    return Container(
      height: 52,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF1E3AFF),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  // ------------------ ส่วนล่าง ------------------
  Widget _social(BuildContext context) {
    return Column(
      children: [
        // 👉 กดแล้วกลับไปหน้า Login (B02)
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const B02PageUI(),
              ),
            );
          },
          child: const Text(
            'Or continue with',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        const SizedBox(height: 16),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.g_mobiledata, size: 36),
            SizedBox(width: 16),
            Icon(Icons.facebook, size: 28),
            SizedBox(width: 16),
            Icon(Icons.apple, size: 28),
          ],
        ),

        const SizedBox(height: 40),
      ],
    );
  }
}
