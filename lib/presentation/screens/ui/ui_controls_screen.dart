import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ui Controls Screen')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;

  // const _UiControlsView({
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: Text('Developer Mode'),
          subtitle: Text('Aditional controls'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),

        RadioListTile(
          title: Text("By Car"),
          subtitle: Text('Trip by Car'),
          value: Transportation.car,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.car;
          }),
        ),
         RadioListTile(
          title: Text("By Plane"),
          subtitle: Text('Trip by Plane'),
          value: Transportation.plane,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.plane;
          }),
        ),
         RadioListTile(
          title: Text("By Boat"),
          subtitle: Text('Trip by Boat'),
          value: Transportation.boat,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.boat;
          }),
        ),
         RadioListTile(
          title: Text("By Submarine"),
          subtitle: Text('Trip by Submarine'),
          value: Transportation.submarine,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.submarine;
          }),
        ),
      ],
    );
  }
}
