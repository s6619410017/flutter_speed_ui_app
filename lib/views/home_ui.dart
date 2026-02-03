// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'a01_page_ui.dart';
import 'b01_page_ui.dart';
import 'c01_page_ui.dart';
import 'd01_page_ui.dart';
import 'e01_page_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // เน้นสีขาวสะอาดตา
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Showcase',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            // 🖼 Image Section - ปรับให้ดูเบาบางที่สุด
            const SizedBox(height: 10),
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: const Color(0xFFF8F9FA),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Image.asset(
                  'assets/icon/images/imgg2.png',
                  height: 120,
                ),
              ),
            ),

            const SizedBox(height: 40),

            // 🔘 Menu Buttons - แบบเรียบง่าย
            _menuButton(
              context,
              title: 'Onboarding UI',
              page: const A01PageUI(),
            ),
            _menuButton(
              context,
              title: 'Login & Register',
              page: const B01PageUI(),
            ),
            _menuButton(
              context,
              title: 'Profile & Account',
              page: const C01PageUI(),
            ),
            _menuButton(
              context,
              title: 'OTP & Password',
              page: const D01PageUI(),
            ),
            
            const SizedBox(height: 10),
            const Divider(height: 40, thickness: 1, color: Color(0xFFEEEEEE)),
            
            // ปุ่มพิเศษที่เด่นแต่ยังดู Clean
            _menuButton(
              context,
              title: 'Go to Modern UI',
              page: const E01PageUI(),
              isHighlight: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuButton(BuildContext context, {
    required String title,
    required Widget page,
    bool isHighlight = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: OutlinedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => page)),
        style: OutlinedButton.styleFrom(
          backgroundColor: isHighlight ? Colors.black87 : Colors.transparent,
          side: BorderSide(color: isHighlight ? Colors.black87 : const Color(0xFFE0E0E0)),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: isHighlight ? Colors.white : Colors.black87,
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: isHighlight ? Colors.white : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}