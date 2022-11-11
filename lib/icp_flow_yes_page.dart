import 'package:flutter/material.dart';

class ICPFlowYesPage extends StatefulWidget {
  const ICPFlowYesPage({super.key});

  @override
  State<ICPFlowYesPage> createState() => _ICPFlowYesPageState();
}

class _ICPFlowYesPageState extends State<ICPFlowYesPage>
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
          Image.asset('assets/images/iam_flow_no.png'),
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
                'ENCAMINHE O PACIENTE PARA O HOSPITAL DE PREFERÊNCIA!',
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
        ],
      ),
    );
  }
}
