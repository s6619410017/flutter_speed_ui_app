import 'package:flutter/material.dart';
import 'd02_page_ui.dart';

class D03PageUI extends StatelessWidget {
  const D03PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ===== Back Button =====
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),

                const SizedBox(height: 16),

                // ===== Title =====
                const Text(
                  'Hello! Register to get\nstarted',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 32),

                // ===== Username =====
                _buildTextField('Username'),

                const SizedBox(height: 16),

                // ===== Email =====
                _buildTextField('Email'),

                const SizedBox(height: 16),

                // ===== Password =====
                _buildTextField(
                  'Password',
                  isPassword: true,
                ),

                const SizedBox(height: 16),

                // ===== Confirm Password =====
                _buildTextField(
                  'Confirm password',
                  isPassword: true,
                ),

                const SizedBox(height: 32),

                // ===== Register Button =====
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // ===== Divider =====
                Row(
                  children: const [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text('Or Register with'),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),

                const SizedBox(height: 16),

                // ===== Social Login =====
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildSocialButton('assets/icon/images/primary.png'),
                    _buildSocialButton('assets/icon/images/XMLID_28_.png'),
                    _buildSocialButton('assets/icon/images/cib_apple.png'),
                  ],
                ),

                const SizedBox(height: 250),

                // ===== Login Now =====
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const D02PageUI(),
                        ),
                      );
                    },
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: 'Already have an account? '),
                          TextSpan(
                            text: 'Login Now',
                            style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/* =======================
   Widgets
   ======================= */

Widget _buildTextField(String hint, {bool isPassword = false}) {
  return TextField(
    obscureText: isPassword,
    decoration: InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: const Color(0xFFF5F5F5),
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    ),
  );
}

Widget _buildSocialButton(String imagePath) {
  return Container(
    width: 105,
    height: 56,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.shade300),
    ),
    child: Center(
      child: Image.asset(
        imagePath,
        width: 24,
      ),
    ),
  );
}
