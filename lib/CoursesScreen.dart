import 'package:flutter/material.dart';

import 'HistoryDetailScreen.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hallo, Rauf Hafizh Asmenta!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  buildCourseCard(context, 'Matematika', '2 Lesson', Icons.calculate),
                  buildCourseCard(context, 'Bahasa', '2 Lesson', Icons.language),
                  buildCourseCard(context, 'Sejarah', '5 Lesson', Icons.history),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCourseCard(BuildContext context, String title, String lessons, IconData icon) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Icon(icon, size: 40),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(lessons),
        onTap: () {
          // Aksi saat kartu ditekan
          if (title == 'Sejarah') {
            // Navigasi ke halaman SejarahDetailScreen jika kartu Sejarah ditekan
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SejarahDetailScreen(),
              ),
            );
          }
        },
      ),
    );
  }
}

class SejarahDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Sejarah'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Materi Sejarah',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListView(
              shrinkWrap: true,
              children: [
                buildDetailCard(context, 'Sejarah Indonesia'),
                buildDetailCard(context, 'Historia'),
                buildDetailCard(context, 'G30S/PKI (1965)'),
                buildDetailCard(context, 'Perang Dunia'),
                buildDetailCard(context, 'Supersemar (1966)'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDetailCard(BuildContext context, String title) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title),
        onTap: () {
          if (title == 'G30S/PKI (1965)') {
            // Navigasi ke HistoryDetailScreen saat kartu G30S/PKI ditekan
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HistoryDetailScreen(),
              ),
            );
          }
          // Logika untuk navigasi atau aksi lain untuk materi lainnya
        },

      ),
    );
  }
}