import 'package:flutter/material.dart';

// import หน้า D06
import 'd06_page_ui.dart';

class D05PageUI extends StatelessWidget {
  const D05PageUI({super.key});

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
                'OTP Verification',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Enter the verification code we just sent on your email address.',
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 32),

              // ===== OTP Boxes =====
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  4,
                  (index) => _buildOtpBox(),
                ),
              ),

              const SizedBox(height: 32),

              // ===== Verify Button =====
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
                        builder: (_) => const D06PageUI(),
                      ),
                    );
                  },
                  child: const Text('Verify'),
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
   OTP Box Widget
   ======================= */

Widget _buildOtpBox() {
  return SizedBox(
    width: 60,
    height: 60,
    child: TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      maxLength: 1,
      decoration: InputDecoration(
        counterText: '',
        filled: true,
        fillColor: const Color(0xFFF5F5F5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}
