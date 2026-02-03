import 'package:flutter/material.dart';
import 'd02_page_ui.dart';
class D07PageUI extends StatelessWidget {
  const D07PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.check_circle,
                  color: Colors.green, size: 100),

              const SizedBox(height: 24),

              const Text(
                'Password Changed!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),

              const Text(
                'Your password has been changed successfully.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 32),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const D02PageUI(),
                    ),
                  );
                },
                  child: const Text('Back to Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
