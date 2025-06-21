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
      title: 'LokalMart',
      home: const BerandaPage(),
    );
  }
}

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background image (Top)
          SizedBox(
            width: double.infinity,
            height: 295,
            child: Image.network(
              'https://placehold.co/393x295',
              fit: BoxFit.cover,
            ),
          ),
          // Foreground content
          Positioned(
            top: 273,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          _pillButton('Sriharjo', const Color(0xFF5B5835)),
                          const SizedBox(width: 8),
                          _pillButton('Register', const Color(0xFFB3AF8A)),
                        ],
                      ),
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xFFB3AF8A),
                        child: Icon(Icons.location_on, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'LokalMart menampilkan produk UMKM, budaya, dan pesona\nwisata Sriharjo lengkap dengan info lokasi dan kontak. Dukung\nproduk lokal, lestarikan budaya, dan majukan ekonomi desa!',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF7E7C7C),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _sectionTitle('Wisata Sriharjo'),
                  const SizedBox(height: 8),
                  _horizontalList([
                    _wisataCard('Srikeminut'),
                    _wisataCard('Lembah Sorory'),
                    _wisataCard('Taman Girli Indah'),
                  ]),
                  const SizedBox(height: 20),
                  _sectionTitle('Potensi Budaya'),
                  const SizedBox(height: 8),
                  _horizontalList([
                    _budayaCard('Sekar Wangi Tari'),
                    _budayaCard('Sholawat Mudo Palupi'),
                    _budayaCard('Jatilan Mudho Langgen'),
                  ]),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF5B5835),
        selectedItemColor: const Color(0xFFE6E3CB),
        unselectedItemColor: const Color(0xFFE6E3CB),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'UMKM'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _pillButton(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Inter',
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter',
          ),
        ),
        const Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xFF7E7C7C)),
      ],
    );
  }

  Widget _horizontalList(List<Widget> items) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) => items[index],
      ),
    );
  }

  Widget _wisataCard(String title) {
    return Container(
      width: 114,
      decoration: BoxDecoration(
        color: const Color(0xFFB3AF8A),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 86,
            width: 114,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://placehold.co/114x86'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7, top: 4),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 9,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7, top: 2),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              decoration: BoxDecoration(
                color: const Color(0xFF5B5835),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.location_on, size: 10, color: Colors.white),
                  SizedBox(width: 2),
                  Text(
                    'Lokasi',
                    style: TextStyle(fontSize: 7, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _budayaCard(String title) {
    return Container(
      width: 114,
      decoration: BoxDecoration(
        color: const Color(0xFFB3AF8A),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 85,
            width: 114,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://placehold.co/114x85'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7, top: 4),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 9,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 2),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              decoration: BoxDecoration(
                color: const Color(0xFF5B5835),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                'Selengkapnya',
                style: TextStyle(fontSize: 6, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
