import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SejarahSriharjoPage(),
    ),
  );
}

class SejarahSriharjoPage extends StatelessWidget {
  const SejarahSriharjoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back),
                  const SizedBox(width: 16),
                  const Text(
                    'Sejarah Sriharjo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),

            // Konten utama
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFE6E3CB),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gambar + Judul
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/foto/logo-sriharjo.png', // Ganti jika kamu pakai logo lain
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Kalurahan Sriharjo',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Sejarah Kalurahan Sriharjo',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        '''Kalurahan Sriharjo dibentuk pada tahun 1946. Sedangkan nama ‘Sriharjo’ diambil dari geografi wilayah dan mata pencaharian penduduk. Menurut mitos Jawa, kata ‘Sriharjo’ adalah pemberian dari Dewi Sri dan ‘harjo’ yaitu raharjo atau sejahtera. Jadi, nama Sriharjo berarti desa yang sejahtera dengan mata pencaharian pokok warganya adalah bercocok tanam.

Kalurahan Sriharjo awalnya merupakan penggabungan tiga kalurahan lama, yaitu:
1. Kalurahan Mojohuro
2. Kalurahan Dogongan
3. Kalurahan Kedungmiri

Kantor sementara pada waktu penggabungan bertempat di rumah Bapak Sosro Margono di Padukuhan Mojohuro. Pada tahun 1951 dibangun kantor baru Pemerintah Kalurahan Sriharjo di atas tanah kas desa di wilayah Padukuhan Mojohuro.

Berikut pembagian wilayah padukuhan Kalurahan Sriharjo pada saat itu:
1. Padukuhan Miri
2. Padukuhan Jati
3. Padukuhan Mojohuro
4. Padukuhan Pelemadu
5. Padukuhan Sungapan
6. Padukuhan Gondosuli
7. Padukuhan Trukan
8. Padukuhan Dogongan
9. Padukuhan Ketos
10. Padukuhan Ngrancah
11. Padukuhan Pengkol
12. Padukuhan Sompok
13. Padukuhan Wunut''',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          height: 1.6,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
