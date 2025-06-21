import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LokalMartLogin(),
    );
  }
}

class LokalMartLogin extends StatelessWidget {
  const LokalMartLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE6E3CB), Color(0xE55B5835)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 31),
            child: Column(
              children: [
                const SizedBox(height: 54),

                // ✅ Ganti logo dari Image.network ke Image.asset
                SizedBox(
                  width: 300,
                  height: 300,
                  child: Image.asset(
                    'assets/foto/logo-lokalmart.png', // ← Pastikan file ini ada
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 10),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Lok',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF424021),
                          fontFamily: 'Inter',
                        ),
                      ),
                      TextSpan(
                        text: 'alMart',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF9E9A47),
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Container(
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFF524F2C)),
                  ),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                    'Naufal Nanda Anjaya',
                    style: TextStyle(
                      color: Color(0xFFE7E5E5),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Container(
                  height: 65,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFF524F2C)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        '***********',
                        style: TextStyle(
                          color: Color(0xFFE7E5E5),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                      ),
                      Icon(Icons.visibility_off, color: Color(0xFFD9D9D9)),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
                SizedBox(
                  width: 131,
                  height: 42,
                  child: ElevatedButton(
                    onPressed: () {
                      // login action here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFB3AF8A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Masuk',
                      style: TextStyle(
                        color: Color(0xFF424021),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
