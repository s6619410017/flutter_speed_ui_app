import 'package:flutter/material.dart';
import 'b03_page_ui.dart';

class B02PageUI extends StatelessWidget {
  const B02PageUI({super.key});

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                const Text(
                  'Login here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 0, 68, 255),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Welcome back you’ve\nbeen missed!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                const SizedBox(height: 32),
                _field('Email'),
                const SizedBox(height: 16),
                _field('Password', isPassword: true),
              ],
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot your password?',
                style: TextStyle(color: Colors.blue.shade700),
              ),
            ),
            const SizedBox(height: 32),
            _primaryButton('Sign in'),
            const Spacer(),
            _social(context),
          ],
        ),
      ),
    );
  }

  // ------------------ Widgets ------------------

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

  Widget _social(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const B03PageUI(),
              ),
            );
          },
          child: const Text(
            'Create new account',
            style: TextStyle(
              color: Color(0xFF1E3AFF),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
