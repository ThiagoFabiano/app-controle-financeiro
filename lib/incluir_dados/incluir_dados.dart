import 'package:flutter/material.dart';

class IncluirDados extends StatefulWidget {
  const IncluirDados({super.key});


  @override
  State<IncluirDados> createState() {
    return _IncluirDadosState();
  }
}

class _IncluirDadosState extends State<IncluirDados> {


  @override
  Widget build(BuildContext context) {
    final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;
    return LayoutBuilder(builder: (ctx, constraints) {
      final width = constraints.maxWidth;

      return SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, keyboardSpace + 16),
            child: const Column(
              children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextField(
                          maxLength: 50,
                          decoration:
                               InputDecoration(label: Text('Descrição')),
                        ),
                      )
                    ],
                  )
              ],
            ),
          ),
        ),
      );
    });
  }
}
