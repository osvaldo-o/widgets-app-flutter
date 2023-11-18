import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 0.1, 'label': 'Elevation 1'},
  {'elevation': 0.2, 'label': 'Elevation 2'},
  {'elevation': 0.3, 'label': 'Elevation 3'},
  {'elevation': 0.4, 'label': 'Elevation 4'},
  {'elevation': 0.5, 'label': 'Elevation 5'},
];

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: const _CardScreen(),
    );
  }
}

class _CardScreen extends StatelessWidget {
  const _CardScreen();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
              (e) => _CardType1(label: e['label'], elevation: e['elevation'])),
          ...cards.map(
              (e) => _CardType1(label: e['label'], elevation: e['elevation'])),
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  onPressed: () {},
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(label),
            )
          ],
        ),
      ),
    );
  }
}
