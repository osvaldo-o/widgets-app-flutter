import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Screen'),
      ),
      body: const _ButtonView(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            GoRouter.of(context).pop();
          }),
    );
  }
}

class _ButtonView extends StatelessWidget {
  const _ButtonView();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Wrap(
        spacing: 10,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Elevated'),
          ),
          const ElevatedButton(
            onPressed: null,
            child: Text('Elevated Disable'),
          ),
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated icon')),
          FilledButton(
            onPressed: () {},
            child: const Text('Filled'),
          ),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.adb_outlined),
            label: const Text('Filled icon'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Outline'),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add_ic_call),
            label: const Text('Outline icon'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Text'),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add_to_home_screen_outlined),
            label: const Text('Text icon'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.app_registration_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.app_registration_rounded),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(color.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white)),
          ),
          const CustomButton(),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text('Custom button')),
        ),
      ),
    );
  }
}
