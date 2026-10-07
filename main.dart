import 'package:flutter/material.dart';

import 'package:miaplicacion/vista1.dart';
import 'package:miaplicacion/vista2.dart';
import 'package:miaplicacion/vista3.dart';


//Lenin vladimir matricula 2023-1403
void main() => runApp(
  MaterialApp(home: AppPrincipal(), debugShowCheckedModeBanner: false),
);

class AppPrincipal extends StatefulWidget {
  const AppPrincipal({super.key});

  @override
  AppPrincipalState createState() => AppPrincipalState();
}

class AppPrincipalState extends State<AppPrincipal> {
  int indice = 0;

  final vistas = [Vista1(), Vista2(), Vista3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: vistas[indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        onTap: (i) => setState(() => indice = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'perfil'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'tabla'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'formulario',
          ),
        ],
      ),
    );
  }
}
