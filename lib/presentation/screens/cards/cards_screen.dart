import 'package:flutter/material.dart';

const cards = <Map<String,dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0.0'},
  {'elevation': 1.0, 'label': 'Elevation 1.0'},
  {'elevation': 2.0, 'label': 'Elevation 2.0'},
  {'elevation': 3.0, 'label': 'Elevation 3.0'},
  {'elevation': 4.0, 'label': 'Elevation 4.0'}, 
  {'elevation': 5.0, 'label': 'Elevation 5.0'},
  {'elevation': 6.0, 'label': 'Elevation 6.0'},
  {'elevation': 7.0, 'label': 'Elevation 7.0'},
  {'elevation': 8.0, 'label': 'Elevation 8.0'},
  {'elevation': 9.0, 'label': 'Elevation 9.0'},
  {'elevation': 10.0, 'label': 'Elevation 10.0'},
  {'elevation': 11.0, 'label': 'Elevation 11.0'},
  {'elevation': 12.0, 'label': 'Elevation 12.0'},
  {'elevation': 13.0, 'label': 'Elevation 13.0'},
  {'elevation': 14.0, 'label': 'Elevation 14.0'},
  {'elevation': 15.0, 'label': 'Elevation 15.0'},
];

class CardsScreen extends StatelessWidget {

  static const String name = 'cards_screen'; // Property to set name in go router.
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Screen'),
      ),
      body: _CardsView()
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map((card)=> _CardType1(elevation: card['elevation'],label:  card['label'])),
      
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {

  final String label;
  final double elevation;
  const _CardType1({ required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.more_vert_outlined),
                onPressed: (){},
              )
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            )
          ],
        ),
      ),
    );
  }
}