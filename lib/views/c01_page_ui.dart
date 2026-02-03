import 'package:flutter/material.dart';
import 'c02_page_ui.dart';

class C01PageUI extends StatelessWidget {
  const C01PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const C02PageUI()),
          );
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            // 🔹 Background image
            Image.asset(
              'assets/icon/images/S__27648002.jpg',
              fit: BoxFit.cover,
            ),

            // 🔹 Dark overlay
            Container(
              color: Colors.black.withOpacity(0.25),
            ),

            // 🔹 Content
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // 🔹 Logo
                  Container(
                    width: 121,
                    height: 121,
                    
                    
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Image.asset(
                        'assets/icon/images/Vector.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // 🔹 HOPE FOR / HUMANITY
                  const Column(
                    children: [
                      Text(
                        'HOPE FOR',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.2,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'HUMANITY',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 200),

                  // 🔹 Welcome text
                  const Text(
                    'Welcome to\nhope for humanity',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 33,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
