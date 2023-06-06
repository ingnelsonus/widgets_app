import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
        content: const Text('Hola Mundo'),
        action: SnackBarAction(label: 'OK', onPressed: () {}),
        duration: const Duration(seconds: 3));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) =>  AlertDialog(
          title: const Text('¿Estas seguro?'),
          content: const Text('Exercitation proident sunt duis consequat aliqua voluptate ullamco cupidatat.'),
          actions: [
            TextButton(onPressed: ()=>context.pop(), child: const Text('Cancelar')),
            FilledButton(onPressed: ()=>context.pop(), child: const Text('Aceptar'))
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Non laboris dolor incididunt velit irure cupidatat quis ad mollit elit Lorem voluptate.')
                ]);
              },
              child: const Text('Licencias usadas')),
          FilledButton.tonal(
              onPressed: () =>openDialog(context),
              child: const Text('Mostrar Dialogo'))
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostar snackbars'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
          showCustomSnackbar(context);
        },
      ),
    );
  }
}
