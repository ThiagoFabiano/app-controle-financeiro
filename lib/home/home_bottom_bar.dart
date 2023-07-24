import 'package:app_controle_financeiro/incluir_dados/incluir_dados.dart';
import 'package:flutter/material.dart';
class HomeBottomBar extends StatelessWidget {
   HomeBottomBar({
    super.key,
  });

  BuildContext? ctx;

  void _exibirModalIncluirDado() {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: ctx!,
      builder: (ctx) => IncluirDados(),
      constraints: const BoxConstraints(maxHeight: double.infinity),
    );
  }


  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Container(
          height: 70,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(221, 0, 0, 0),
                spreadRadius: 0.1,
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Disponível',
                style: TextStyle(
                    color: Color.fromARGB(125, 255, 255, 255),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'R\$ 05,00',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0,
                      blurRadius: 15,
                      offset: Offset(1, 5),
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: _exibirModalIncluirDado,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
  }
}
