// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupUi extends StatefulWidget {
  const SignupUi({super.key});

  @override
  State<SignupUi> createState() => _SignupUiState();
}

class _SignupUiState extends State<SignupUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 185, 255), // พื้นหลังเหลือง
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Back Button
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 26,
                      ),
                    ),

                    const SizedBox(height: 15),

                    /// Image (LEFT)
                    Image.asset(
                      'assets/icon/images/logo.png',
                      width: 180,
                    ),

                    const SizedBox(height: 20),

                    /// Title
                    const Text(
                      'Get On Board!',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 6),

                    /// Subtitle
                    const Text(
                      'Create your profile to start your journey.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(height: 25),

                    buildTextField(
                      hint: 'Full Name',
                      icon: Icons.person_outline,
                    ),

                    const SizedBox(height: 15),

                    buildTextField(
                      hint: 'E-Mail',
                      icon: Icons.email_outlined,
                    ),

                    const SizedBox(height: 15),

                    buildTextField(
                      hint: 'Phone No',
                      icon: Icons.numbers,
                    ),

                    const SizedBox(height: 15),

                    buildTextField(
                      hint: 'Password',
                      icon: FontAwesomeIcons.fingerprint,
                      obscure: true,
                    ),

                    const SizedBox(height: 25),

                    /// SIGNUP BUTTON
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'SIGNUP',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(
                          MediaQuery.of(context).size.width,
                          55,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// OR
                    const Center(
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// Google Button
                    OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon/images/googlelogo.png',
                            width: 20,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'SIGN-IN WITH GOOGLE',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(
                          MediaQuery.of(context).size.width,
                          55,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// Login
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an Account?'),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Reusable TextField
  Widget buildTextField({
    required String hint,
    required IconData icon,
    bool obscure = false,
  }) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon, color: Colors.grey),
        filled: true,
        fillColor: const Color(0xFFF5F5F5), // เทาอ่อนเหมือนรูป
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      ),
    );
  }
}
