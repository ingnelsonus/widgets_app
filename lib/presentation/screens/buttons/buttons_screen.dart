import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: const _BottonView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          // Navigator.pop(context);
          context.pop();
        },
      ),
    );
  }
}

class _BottonView extends StatelessWidget {
  const _BottonView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: Wrap(
        spacing: 10,
        crossAxisAlignment:WrapCrossAlignment.center,        
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
          const ElevatedButton(onPressed:null, child: Text('Elevated Disabled')),
          ElevatedButton.icon(
            onPressed: (){}, 
            icon: const Icon(Icons.access_alarm_rounded),
            label: const Text('Elevated icon')
          ),
          FilledButton(onPressed: (){}, child: const Text('Filled')),
          FilledButton.icon(
            onPressed: (){}, 
            icon: const Icon(Icons.accessibility_rounded),
            label: const Text('FilledIcon')),
          OutlinedButton(onPressed: (){}, child: const Text('OutLinebtn')),
          OutlinedButton.icon(
            onPressed: (){},
            icon:const Icon(Icons.wrap_text_sharp),
            label: const Text('OutLinebtnIcon'),
          ),
          TextButton(onPressed: (){}, child: const Text('TextBtn')),
          TextButton.icon(
            onPressed: (){},
            icon: const Icon(Icons.work_off_sharp),
            label: const Text('TextBtnIcon')
          ),
          //TODO: Custom botton
          IconButton(onPressed: (){}, icon: const Icon(Icons.wifi_2_bar_sharp)),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.wifi_2_bar_sharp),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(colors.primary),
              iconColor: const MaterialStatePropertyAll(Colors.white)
            ),
          )
        ],
      ),
    );
  }
}
