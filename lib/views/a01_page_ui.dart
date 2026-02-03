import 'package:flutter/material.dart';
import 'a02_page_ui.dart';

class A01PageUI extends StatefulWidget {
  const A01PageUI({super.key});

  @override
  State<A01PageUI> createState() => _A01PageUIState();
}

class _A01PageUIState extends State<A01PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // 🔝 Image Section
          Container(
            height: 463,
            width: 372,
            decoration: const BoxDecoration(
              color: Color(0xFFFFB3F3),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Center(
              child: Image.asset(
                'assets/icon/images/home.png',
                height: 434,
              ),
            ),
          ),

          const SizedBox(height: 24),

          const Text(
            'Discover Your\nOwn Dream House',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et. Eget viverra urna, vestibulum egestas faucibus egestas. Sagittis nam velit volutpat eu nunc.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ),

          const Spacer(),

          // 🔘 Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Expanded(
                  child: _button(
                    title: 'Sign in',
                    isPrimary: true,
                    onTap: () {
                      // ไว้ค่อยไปหน้าอื่น
                    },
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _button(
                    title: 'Register',
                    isPrimary: false,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const A02PageUI(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 32),
        ],
      ),
    );
  }

  // 🔧 แก้ฟังก์ชันนี้
  Widget _button({
    required String title,
    required bool isPrimary,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: isPrimary ? const Color(0xFFFF8CE6) : Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color(0xFFFF8CE6),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: isPrimary ? Colors.white : const Color(0xFFFF8CE6),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
