import 'package:flutter/material.dart';
import 'd05_page_ui.dart';

class D04PageUI extends StatelessWidget {
  const D04PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ===== Back =====
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
              ),

              const SizedBox(height: 24),

              // ===== Title =====
              const Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                "Don't worry! It occurs. Please enter the email address linked with your account.",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 32),

              // ===== Email =====
              _buildTextField('Enter your email'),

              const SizedBox(height: 24),

              // ===== Send Code =====
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const D05PageUI(),
                      ),
                    );
                  },
                  child: const Text('Send Code'),
                ),
              ),

              const Spacer(),

              // ===== Remember Password =====
              Center(
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(text: 'Remember Password? '),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                        ),
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

Widget _buildTextField(String hint) {
  return TextField(
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
