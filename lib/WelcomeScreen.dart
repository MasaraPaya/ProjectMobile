import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'SignUpScreen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          // Menghilangkan fokus dari input field jika ada
          FocusScope.of(context).unfocus();
        },
        child: Container(
          // Full background color
          color: Color(0xFFFDE8D7),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Teks dengan gaya yang disesuaikan
                Text(
                  'LET\'S START!',
                  style: TextStyle(
                    fontSize: 36, // Ukuran font yang lebih besar
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Warna teks hitam
                  ),
                ),
                SizedBox(height: 10),
                // Teks dengan gaya yang lebih halus
                Text(
                  'Select one below given',
                  style: TextStyle(
                    fontSize: 18, // Ukuran font yang lebih kecil
                    color: Colors.black54, // Warna teks lebih terang
                  ),
                ),
                SizedBox(height: 30), // Spasi yang lebih sedikit
                // Tombol Sign Up
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                  },
                  child: Text('Sign Up'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15), // Padding disesuaikan
                    textStyle: TextStyle(fontSize: 18), // Ukuran teks di tombol
                  ),
                ),
                SizedBox(height: 15), // Spasi antara tombol
                // Tombol Log In
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text('Log In'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                    textStyle: TextStyle(fontSize: 18), // Ukuran teks di tombol
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
