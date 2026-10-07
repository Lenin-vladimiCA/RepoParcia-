// VISTA 3: Fórmula Cuadrática
import 'dart:math' as math;
import 'package:flutter/material.dart';

class Vista3 extends StatefulWidget {
  const Vista3({super.key});


//Vladi papurro estubo aqui 20231403
  @override
  _Vista3State createState() => _Vista3State();
}

class _Vista3State extends State<Vista3> {
  final _a = TextEditingController();
  final _b = TextEditingController();
  final _c = TextEditingController();
  String _r = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          const SizedBox(height: 40),
          TextField(controller: _a, decoration: const InputDecoration(labelText: 'A')),
          TextField(controller: _b, decoration: const InputDecoration(labelText: 'B')),
          TextField(controller: _c, decoration: const InputDecoration(labelText: 'C')),
          ElevatedButton(
            onPressed: () {
              final a = double.tryParse(_a.text);
              final b = double.tryParse(_b.text);
              final c = double.tryParse(_c.text);

              if (a == null || b == null || c == null || a == 0) {
                setState(() => _r = 'Datos inválidos o A=0');
                return;
              }

              final discriminante = (b * b) - (4 * a * c);
              if (discriminante < 0) {
                setState(() => _r = 'Sin solución real');
                return;
              }

              final raiz = math.sqrt(discriminante);

              setState(() {
                _r = 'x1 = ${(-b + raiz) / (2 * a)}\nx2 = ${(-b - raiz) / (2 * a)}';
              });
            },
            child: const Text('Resolver'),
          ),
          Text(_r, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _a.dispose();
    _b.dispose();
    _c.dispose();
    super.dispose();
  }
}