import 'package:flutter/material.dart';

class ReperfusaoNoPage extends StatefulWidget {
  const ReperfusaoNoPage({super.key});

  @override
  State<ReperfusaoNoPage> createState() => _ReperfusaoNoPageState();
}

class _ReperfusaoNoPageState extends State<ReperfusaoNoPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    );
    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fluxograma IAM'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Image.asset('assets/images/ambulancia.png'),
          const SizedBox(height: 24),
          FadeTransition(
            opacity: animation,
            child: const Icon(
              Icons.arrow_downward_outlined,
              size: 80,
            ),
          ),
          const SizedBox(height: 24),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                'ACIONE O SAMU O MAIS RÁPIDO POSSÍVEL',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          FadeTransition(
            opacity: animation,
            child: const Icon(
              Icons.arrow_upward_outlined,
              size: 80,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.phone),
              SizedBox(width: 12),
              Text(
                'Ligue para o SAMU: 192',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
