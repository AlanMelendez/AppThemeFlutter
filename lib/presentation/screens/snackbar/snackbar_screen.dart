import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(title: Text('Snackbars & Dialogs')),
      body: Center(
        child: Text('Presiona el botón para mostrar un Snackbar'),
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
