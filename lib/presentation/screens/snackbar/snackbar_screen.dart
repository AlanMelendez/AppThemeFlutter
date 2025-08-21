import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: Text('Este es un Snackbar personalizado'),
      duration: Duration(seconds: 2),
      action: SnackBarAction(
        label: 'Cerrar',
        onPressed: () {
          //ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }


  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, //avoid close if press wiouth dialog.
      builder: (context) => AlertDialog(
        title: Text('Dialogo de alerta'),
        content: Text('Este es el contenido del dialogo de alerta'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Aceptar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(title: Text('Snackbars & Dialogs')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    Text('lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                  ]
                );
              },
              child: Text("Licencias Usadas"),
            ),
            FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: Text("Mostrar Dialogo Pantalla"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Mostrar Snackbar"),
        icon: Icon(Icons.remove_red_eye),
        onPressed: () {
          showCustomSnackbar(context);
        },
      ),
    );
  }
}
