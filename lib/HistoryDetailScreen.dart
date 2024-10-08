import 'package:flutter/material.dart';

class HistoryDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // Mengganti Stack dengan Container berwarna
              color: Colors.blue, // Ubah warna sesuai kebutuhan
              height: 250,
              alignment: Alignment.center,
              child: Text(
                'Detail Sejarah',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Peristiwa Sejarah Indonesia: Masa Penjajahan hingga Reformasi',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Kedatangan Bangsa Eropa\n'
                        'Ditas dari buku Sejarah Indonesia Modern (2007) oleh MC Ricklefs, bangsa Eropa yang datang pertama kali di Indonesia adalah Portugis di Malaka tahun 1509. Meski bersih diskusi, Portugis yang dipimpin Alfonso de Albuquerque kembali datang pada 1511 dan menguasai wilayah tersebut.\n\n'
                        'Belanda baru datang ke Banten pada 1596 dalam ekspedisi Cornelis de Houtman. Mereka membawa banyak rempah-rempah ke Belanda. Pada 1602, terbentuklah Vereenigde Oostindische Compagnie (VOC) yang kemudian mengendalikan semua kekuasaan Portugis.\n\n'
                        'VOC dibubarkan pada 31 Desember 1799 dan diambil alih pemerintah Belanda. Di tempat tersebut Belanda, terdapat nama Prancis (1800-1811) dan Inggris (1811-1816), sebelum kembali menjadi Belanda.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.done),
        backgroundColor: Colors.black,
      ),
    );
  }
}
