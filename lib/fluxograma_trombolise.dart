import 'package:flutter/material.dart';

class FluxogramaTrombolise extends StatefulWidget {
  const FluxogramaTrombolise({super.key});

  @override
  State<FluxogramaTrombolise> createState() => _FluxogramaTromboliseState();
}

class _FluxogramaTromboliseState extends State<FluxogramaTrombolise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fluxograma para Trombolise'),
        backgroundColor: Colors.redAccent,
      ),
      body: InteractiveViewer(
        child: Column(
          children: [
            Image.asset(
              'assets/images/desfibrilacao.png',
            ),
            Expanded(
              child: Image.asset(
                'assets/images/flow_trombo1.jpeg',
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/flow_trombo2.jpeg',
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/flow_trombo3.jpeg',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
