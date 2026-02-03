import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

// import หน้าอื่น
import 'd03_page_ui.dart';
import 'd04_page_ui.dart';

class D02PageUI extends StatelessWidget {
  const D02PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

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
                'Welcome back! Glad\n to see you, Again!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 32),

              // ===== Email =====
              _buildTextField('Enter your email'),

              const SizedBox(height: 16),

              // ===== Password =====
              _buildTextField(
                'Enter your password',
                isPassword: true,
              ),

              const SizedBox(height: 8),

              // ===== Forgot Password =====
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const D04PageUI(),
                      ),
                    );
                  },
                  child: const Text('Forgot Password?'),
                ),
              ),

              const SizedBox(height: 16),

              // ===== Login Button =====
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // TODO: Login logic
                  },
                  child: const Text('Login'),
                ),
              ),

              const SizedBox(height: 24),

              // ===== Divider =====
              Row(
                children: const [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text('Or Login with'),
                    
                    
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              const SizedBox(height: 16),

              // ===== Social Buttons =====
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildSocial('assets/icon/images/primary.png'),
                  _buildSocial('assets/icon/images/XMLID_28_.png'),
                  _buildSocial('assets/icon/images/cib_apple.png'),
                ],
              ),

              const SizedBox(height: 320),

              // ===== Register Now =====
              Center(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                      const TextSpan(text: "Don’t have an account? "),
                      TextSpan(
                        text: 'Register Now',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const D03PageUI(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
      fillColor: Colors.grey.shade100,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    ),
  );
}

Widget _buildSocial(String imagePath) {
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
