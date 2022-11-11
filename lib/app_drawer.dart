// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:heart_app/contra_indicacao_trombolise_page.dart';
import 'package:heart_app/criterios_inclusao_exclusao_trombolise.dart';
import 'package:heart_app/drawer_button.dart';
import 'package:heart_app/fluxograma_iam.dart';
import 'package:heart_app/fluxograma_trombolise.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const SizedBox(height: 24),
          DrawerButton(
            title: 'Fluxograma IAM',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FluxogramaIAM(),
                ),
              );
            },
          ),
          const SizedBox(height: 12),
          DrawerButton(
            title: 'Contra indicação Trombolise',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ContraIndicacaoTrombolise(),
                ),
              );
            },
          ),
          const SizedBox(height: 12),
          DrawerButton(
            title: 'Critérios de inclusão e exclusão Trombolise',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      const CriteriosInclusaoExclusaoTrombolise(),
                ),
              );
            },
          ),
          const SizedBox(height: 12),
          DrawerButton(
            title: 'Fluxograma para Trombolise',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FluxogramaTrombolise(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
