import 'package:flutter/material.dart';

class UiControlScreen extends StatelessWidget {
  static const name = 'Ui Control ';
  const UiControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui Control Screen'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, bike, horse, boat, walking }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;

  Transportation selectedTransportation = Transportation.bike;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Developer Mode'),
            subtitle: const Text('Controles adicionales'),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),

        // continua con todos los elementos de la lista trasnportation

        
        
          // continua con todos los elementos de la lista trasnportation
        
        RadioListTile(
          title: const Text('Coche'),
          subtitle: const Text('viajar en coche'),
          value: Transportation.car,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.car;
          }),

          // continua con todos los elementos de la lista trasnportation
        ),
        RadioListTile(
          title: const Text('Caballo'),
          subtitle: const Text('Pasear a caballo'),
          value: Transportation.horse,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.horse;
          }),

          // continua con todos los elementos de la lista trasnportation
        ),
        RadioListTile(
          title: const Text('Bike'),
          subtitle: const Text('Pasear en bicicleta'),
          value: Transportation.bike,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.bike;
          }),

          // continua con todos los elementos de la lista trasnportation
        ),
        RadioListTile(
          title: const Text('Barco'),
          subtitle: const Text('Navegar en barco'),
          value: Transportation.boat,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.boat;
          }),

          // continua con todos los elementos de la lista trasnportation
        ),
        RadioListTile(
          title: const Text('Pasear'),
          subtitle: const Text('Pasear a pie'),
          value: Transportation.walking,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.walking;
          }),

          // continua con todos los elementos de la lista trasnportation
        ),
      ],
    );
  }
}
