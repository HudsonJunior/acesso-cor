// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:heart_app/iam_flow_no_page.dart';
import 'package:heart_app/iam_flow_yes_page.dart';

class FluxogramaIAM extends StatefulWidget {
  const FluxogramaIAM({super.key});

  @override
  State<FluxogramaIAM> createState() => _FluxogramaIAMState();
}

class _FluxogramaIAMState extends State<FluxogramaIAM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fluxograma IAM'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/iam_flow.png'),
          Card(
            color: Colors.redAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Padding(
              padding: EdgeInsets.all(32.0),
              child: Text(
                'ECG\nIAMCSST?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: YesNoButton(
                text: 'SIM',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const IamFlowYesPage(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: YesNoButton(
                text: 'NÃO',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const IamFlowNoPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class YesNoButton extends StatelessWidget {
  const YesNoButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        fixedSize: const Size(100, 100),
        backgroundColor: Colors.red[900],
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
