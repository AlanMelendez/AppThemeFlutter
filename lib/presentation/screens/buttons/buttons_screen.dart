import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'buttons_screen'; // Property to set name in go router.
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons Screen'),
      ),
      body: _ButtonView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: (){

          //Backwart to last rout by gorouter
          context.pop();

          //other way to re backaward to last route
          //Navigator.pop(context);
        }
      ),
    );
  }
}

class _ButtonView extends StatelessWidget {
  const _ButtonView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: Text('Elevated Button')),
            ElevatedButton(onPressed: null, child: Text('Elevated Disable')),
            ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.search),  label: Text('Elevated Disable')),

            FilledButton(onPressed: (){}, child: Text('Press me!')),
            FilledButton.icon(onPressed: (){}, label: Text('Press button'), icon: Icon(Icons.check)),

            OutlinedButton(onPressed: (){}, child: Text('Press me')),
            OutlinedButton.icon(onPressed:(){} , label: Text('Press me'), icon: Icon(Icons.touch_app),),

            TextButton(onPressed: (){}, child: Text('Press me')),
            TextButton.icon(onPressed: (){}, label: Text('Press me'), icon: Icon(Icons.do_not_touch),),

            IconButton(onPressed: (){}, icon: Icon(Icons.touch_app_rounded)),
            IconButton(onPressed: (){}, icon: Icon(Icons.touch_app_rounded), style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(colors.primary)
            ),),

            CustomButton()

          ],
        )
      ),
    );
  }
}

class CustomButton extends StatelessWidget{

   CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () => {},
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text('Custom press', style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}