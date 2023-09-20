import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'Snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(
        label: 'OK!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    ));
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás Seguro?'),
        content: const Text(
            'Nisi commodo sint ex esse labore nulla incididunt officia. Qui ut proident consequat officia in ipsum anim magna occaecat. Deserunt nulla tempor in eiusmod amet mollit elit consectetur officia. Eiusmod reprehenderit aliqua laborum deserunt fugiat quis amet dolore ut.'),
            actions: [
              TextButton(onPressed: () => context.pop(), child:const Text('Cancelar')),
              FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar'))
            ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars  Diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Id mollit ut voluptate cillum officia id laborum sint eu. Tempor pariatur culpa occaecat ea aliqua ex mollit minim commodo labore. In aliquip cillum ea elit anim. Eu reprehenderit qui minim elit anim ullamco incididunt fugiat et ex non id officia occaecat. Laborum pariatur deserunt anim amet laborum. Est ut incididunt magna minim nostrud ea qui aute est culpa veniam. Eu aliquip magna velit non ipsum proident in nulla.Culpa occaecat consequat ut')
                  ]);
                },
                child: const Text('Licencias Usadas')),
            FilledButton.tonal(
                onPressed: () {openDialog(context);}, child: const Text('Mostrar Diálogo')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackBar(context),
      ),
    );
  }
}
