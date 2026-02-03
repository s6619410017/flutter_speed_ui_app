import 'package:flutter/material.dart';
import 'd07_page_ui.dart';

class D06PageUI extends StatelessWidget {
  const D06PageUI({super.key});

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

            const Text(
              'Create new password',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Your new password must be unique from those previously used.',
              
              
            ),

            const SizedBox(height: 24),

            _passwordField('New Password'),
            _passwordField('Confirm Password'),

            const SizedBox(height: 24),

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const D07PageUI(),
                    ),
                  );
                },
                child: const Text('Reset Password'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _passwordField(String hint) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: Colors.grey.shade100,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
