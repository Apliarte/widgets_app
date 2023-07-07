import 'package:flutter/material.dart';
import 'package:widgets_app/config/app_theme/app_theme.dart';

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
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

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

        ExpansionTile(
          backgroundColor:
              Theme.of(context).colorScheme.secondary.withOpacity(0.4),
          title: Text('Maneras de pasear'),
          subtitle: Text('¿cual eliges tú?¿ $selectedTransportation?'),
          children: [
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
        ),

        // todo: implementar el resto de controles

        CheckboxListTile(
          title: const Text('Desayuno'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Almuerzo'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Cena'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
