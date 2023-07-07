import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar screen';
  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snakback = SnackBar(
      content: const Text('hola mundo'),
      action: SnackBarAction(
        label: 'Cerrar',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snakback);
  }


  void openDialog(BuildContext context) { showDialog(


    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: const Text('¿Estas seguro'),
      content: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit  '),
      actions: [
        TextButton(
          onPressed: ()=> context.pop(),
          child: const Text('Cancelar'),
        ),
        FilledButton(
          onPressed: ()=> context.pop(),
          child: const Text('Aceptar'),
        ),
      ],
    ),
  );}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar y Dialogs'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          FilledButton.tonal(
            onPressed: () {
              showAboutDialog(context: context, children: [
                const Text(
                    'loremp ipsum dolor sit amet, consectetur adipiscing elit.'),
              ]);
            },
            child: const Text('Licencias Usadas'),
          ),
          FilledButton.tonal(
            onPressed: () => openDialog(context),
            child: const Text('Mostrar Dialogo'),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('mostrar SnackBar'),
        icon: const Icon(Icons.remove_red_eye),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
