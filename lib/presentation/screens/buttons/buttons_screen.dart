import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton')),
            const ElevatedButton(
                onPressed: null, child: Text('ElevatedButton null')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.house_outlined),
                label: const Text('ElevatedButton.icon')),
            FilledButton(
              onPressed: () {},
              child: const Text('FilledButton'),
            ),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.house_outlined),
                label: const Text('FilledButton.icon')),
            OutlinedButton(
              onPressed: () {},
              child: const Text('OutlinedButton'),
            ),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.house_outlined),
                label: const Text('OutlinedButton.icon')),
            TextButton(onPressed: () {}, child: const Text('TextButton')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.house_outlined),
                label: const Text('TextButton.icon')),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.house_outlined)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.house_outlined),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Colors.pinkAccent), // background color
                  foregroundColor: MaterialStatePropertyAll(Colors.pink),
                  overlayColor:MaterialStatePropertyAll(Colors.pink),
                  iconColor: MaterialStatePropertyAll(Colors.white),
                  shadowColor: MaterialStatePropertyAll(Colors.pink),
                  elevation: MaterialStatePropertyAll(10),
                )),
                const CustomButton()
          ],
        ),
      ),
    );
  }
}
class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      key: key,
      clipBehavior: Clip.antiAlias,

      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(2),
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
        
      ),
      child: Material(
        color: Colors.pink,
        child: InkWell(
          onTap: () {},
          focusColor: Colors.amber,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
            child: Text('ApliArte',style: TextStyle(color: Colors.white),),
        
            
          ),
        ),
      ),
    );
  }
}