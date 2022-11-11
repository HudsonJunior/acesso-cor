import 'package:flutter/material.dart';
import 'package:heart_app/fluxograma_iam.dart';
import 'package:heart_app/icp_flow_no_page.dart';
import 'package:heart_app/icp_flow_yes_page.dart';

class IamFlowYesPage extends StatefulWidget {
  const IamFlowYesPage({super.key});

  @override
  State<IamFlowYesPage> createState() => _IamFlowYesPageState();
}

class _IamFlowYesPageState extends State<IamFlowYesPage>
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
          Image.asset('assets/images/desfibrilacao.png'),
          const Spacer(),
          FadeTransition(
            opacity: animation,
            child: const Icon(
              Icons.arrow_downward_outlined,
              size: 80,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                'ICP DISPONÍVEL EM ATÉ 120 MIN?!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
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
                      builder: (_) => const ICPFlowYesPage(),
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
                      builder: (_) => const ICPFlowNoPage(),
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
