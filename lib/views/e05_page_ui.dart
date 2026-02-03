import 'package:flutter/material.dart';
import 'e06_page_ui.dart';

class E05PageUI extends StatelessWidget {
  const E05PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 20),
              
              /// ===== HEADER WITH BACK BUTTON =====
              Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3E5AB).withOpacity(0.7),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new, size: 18),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                  const Text(
                    'OTP Verification',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              /// ===== ILLUSTRATION =====
              Image.asset(
                'assets/icon/images/6322675 1.png', 
                height: 220,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 40),

              /// ===== OTP SECTION =====
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter OTP',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'An 4 digit code has been sent to your email',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4, (_) => _otpBox(context)),
              ),

              const SizedBox(height: 24),

              /// ===== TIMER TEXT =====
              RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  children: [
                    TextSpan(text: 'You should receive the OTP in '),
                    TextSpan(
                      text: '30 Second',
                      style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              /// ===== VERIFY BUTTON =====
              _button('Verify', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const E06PageUI()),
                );
              }),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _otpBox(BuildContext context) => Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          textAlign: TextAlign.center,
          maxLength: 1,
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          decoration: const InputDecoration(
            counterText: '',
            border: InputBorder.none,
          ),
          onChanged: (value) {
            if (value.length == 1) FocusScope.of(context).nextFocus();
          },
        ),
      );

  Widget _button(String text, VoidCallback onTap) => SizedBox(
        width: double.infinity,
        height: 55,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFBB03B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 0,
          ),
          onPressed: onTap,
          child: Text(
            text,
            style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      );
}