import 'package:flutter/material.dart';

class A02PageUI extends StatefulWidget {
  const A02PageUI({super.key});

  @override
  State<A02PageUI> createState() => _A02PageUIState();
}

class _A02PageUIState extends State<A02PageUI> {
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

            Center(
              child: Column(
                children: const [
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13,color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            _textField(
              hint: 'Username, Email & Phone Number',
            ),
            const SizedBox(height: 16),
            _textField(
              hint: 'Password',
              isPassword: true,
            ),

            const SizedBox(height: 12),

            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password ?',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 13,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // 🔘 Sign in
            GestureDetector(
              onTap: () {
                Navigator.pop(context); // 👈 กลับไปหน้า A01
              },
              child: Container(
                height: 52,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF8CE6),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Center(
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // 🔗 Social
            Center(
              child: Column(
                children: [
                  const Text(
                    'Or Sign up With',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _socialIcon('assets/icon/images/XMLID_28_.png'),
                      const SizedBox(width: 16),
                      _socialIcon('assets/icon/images/primary.png'),
                      const SizedBox(width: 16),
                      _socialIcon('assets/icon/images/cib_apple.png'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textField({
    required String hint,
    bool isPassword = false,
  }) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: const Color(0xFFF5F5F5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

Widget _socialIcon(String path) {
  return Container(
    width: 52,
    height: 52,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: Colors.grey.shade300),
    ),
    child: Center(
      child: Image.asset(
        path,
        width: 24,
        height: 24,
        fit: BoxFit.contain,
      ),
    ),
  );
}
