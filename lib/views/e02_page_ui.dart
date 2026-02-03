import 'package:flutter/material.dart';
import 'e03_page_ui.dart';
import 'e04_page_ui.dart';
class E02PageUI extends StatelessWidget {
  const E02PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ===== TOP IMAGE WITH CURVE & BACK BUTTON =====
            Stack(
              children: [
                ClipPath(

                  child: Container(
                    height: h * 0.45,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/icon/images/Ellipse 1.png', // เปลี่ยนเป็นรูปส้มของคุณ
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new, size: 18),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const Text(
                    'Welcome back',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Login to your account',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const SizedBox(height: 32),

                  /// ===== INPUT FIELDS =====
                  _buildTextField('Enter email or phone'),
                  const SizedBox(height: 16),

                  _buildTextField('Password', isPassword: true),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const E04PageUI()),
                        );
                      },
                      
                      child: const Text(
                        'Forgot Password ?',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  /// ===== LOGIN BUTTON =====
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFBB03B), // สีส้มตามรูป
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 0,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Log In',
                        style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  /// ===== OR DIVIDER =====
                  Row(
                    children: const [
                      Expanded(child: Divider(thickness: 1)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('OR', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Expanded(child: Divider(thickness: 1)),
                    ],
                  ),

                  const SizedBox(height: 25),

                  /// ===== SOCIAL LOGINS =====
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _socialIcon('assets/icon/images/primary.png'),
                      const SizedBox(width: 20),
                      _socialIcon('assets/icon/images/XMLID_28_.png'),
                      const SizedBox(width: 20),
                      _socialIcon('assets/icon/images/cib_apple.png'),
                    ],
                  ),

                  const SizedBox(height: 30),

                  /// ===== FOOTER =====
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      const Text("Don't have an Account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const E03PageUI()),
                          );
                        },
                        child: const Text(
                          'Create Account',
                          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        suffixIcon: isPassword ? const Icon(Icons.visibility_off_outlined, color: Colors.grey) : null,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.grey, width: 0.5),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }

  Widget _socialIcon(String path) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Image.asset(path, width: 30, height: 30),
    );
  }
}

/// คลาสสำหรับตัดรูปภาพให้โค้งตามแบบ
