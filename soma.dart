import 'package:flutter/material.dart';

class Soma extends StatefulWidget {
  const Soma({super.key});

  @override
  State<Soma> createState() => _SomaState();
}

class _SomaState extends State<Soma> {
  TextEditingController numero1 = TextEditingController();
  TextEditingController numero2 = TextEditingController();
  double? resultado;

  void somar() {
    double n1 = double.tryParse(numero1.text) ?? 0;
    double n2 = double.tryParse(numero2.text) ?? 0;

    setState(() {
      resultado = n1 + n2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text("Somar Números", style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: numero1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Número 1"),
            ),
            TextField(
              controller: numero2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Número 2"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: somar, child: const Text("Somar")),
            const SizedBox(height: 20),
            if (resultado != null)
              Text(
                "Resultado: $resultado",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
