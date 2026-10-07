import 'package:flutter/material.dart';

class Vista1 extends StatelessWidget {
  const Vista1({super.key});

  @override
  Widget build(BuildContext context) {
    // Vladi estubo aqui y desarrollo este codigo matricula 2023-1403
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
              "C:UsersPCOneDriveEscritorio\flutter 3miaplicacionlibFoto cv.jpeg",
            ),
          ),
          SizedBox(height: 15),
          Text(
            "lenin vladimir calderon arroyo",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            "2023-1403",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
