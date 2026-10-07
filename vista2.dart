import 'package:flutter/material.dart';

class Vista2 extends StatefulWidget {
  const Vista2({super.key});

  @override
  Vista2State createState() => Vista2State();
}

class Vista2State extends State<Vista2> {
  final _c = TextEditingController();
  List<String> _res = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _c,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Numero"),
          ),
          ElevatedButton(
            onPressed: () {
              int n = int.tryParse(_c.text) ?? 0;
              setState(
                () => _res = List.generate(
                  14,
                  (i) => '$n x ${i + 1} = ${n * (i + 1)}',
                ),
              );
            },
            child: Text("Calcular"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _res.length,
              itemBuilder: (c, i) => Text(
                _res[i],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
