import 'package:flutter/material.dart';

class CriteriosInclusaoExclusaoTrombolise extends StatefulWidget {
  const CriteriosInclusaoExclusaoTrombolise({super.key});

  @override
  State<CriteriosInclusaoExclusaoTrombolise> createState() =>
      _CriteriosInclusaoExclusaoTromboliseState();
}

class _CriteriosInclusaoExclusaoTromboliseState
    extends State<CriteriosInclusaoExclusaoTrombolise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Critérios de Inclusão e Exclusão Trombolise'),
        backgroundColor: Colors.redAccent,
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(12),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Text(
                    'CRITÉRIOS DE INCLUSÃO',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    '➡ ínicio sintomas <= 12 horas',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '➡ Tempo transferência para Angioplastia primária > 120 min',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '➡ ECG: supra ST (ponto J) >= 1,0mm (>= 2 derivações contíguas) nas derivações V2',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '➡ V3 considerar supra ST:\n\t\t\tHomens: >= 2,5mm < 40 anos\n\t\t\t       >= 2,0mm >= 40 anos\n\t\t\tMulheres: >= 1,5mm',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '➡ BRE ou BRD novo',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '➡ Supra ST V3R-V4R = Infarto VD',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '➡ Supra ST V7-V9 >= 0,5mm = infarto dorsal (geralmente infra ST V1 - V2)',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  /// SEÇÃO 2
                  const SizedBox(height: 16),
                  const Text(
                    'CRITÉRIOS DE EXCLUSÃO',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    '➡ Qualquer contraindicação absoluta ao TNK',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  /// SEÇÃO 3
                  const SizedBox(height: 16),
                  const Text(
                    'SITUAÇÕES ESPECIAIS',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    '➡ Sintomas >= 12horas (dor ou sinais de isquemia persistente)',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '➡ Instabilidade hemodinâmica (hipotensão, choque, congestão pulmonar)',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '➡ Arritmias ventriculares complexas',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '➡ Risco hemorrágico alto',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
