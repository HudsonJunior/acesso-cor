import 'package:flutter/material.dart';
import 'package:heart_app/criterios_inclusao_exclusao_trombolise.dart';
import 'package:heart_app/fluxograma_iam.dart';
import 'package:heart_app/reperfusao_no_page.dart';

class ICPFlowNoPage extends StatefulWidget {
  const ICPFlowNoPage({super.key});

  @override
  State<ICPFlowNoPage> createState() => _ICPFlowNoPageState();
}

class _ICPFlowNoPageState extends State<ICPFlowNoPage>
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
          Image.asset(
            'assets/images/miocardio.png',
            fit: BoxFit.fill,
          ),
          const Spacer(),
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
                'REPERFUSÃO QUÍMICA DISPONÍVEL?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                  color: Colors.white,
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
                      builder: (_) =>
                          const CriteriosInclusaoExclusaoTrombolise(),
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
                      builder: (_) => const ReperfusaoNoPage(),
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
