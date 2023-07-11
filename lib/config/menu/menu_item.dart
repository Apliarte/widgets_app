import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  // ignore: prefer_typing_uninitialized_variables
  final icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Riverpod Counter',
    subTitle: 'Introduccion a Riverpod',
    link: '/counter-river',
    icon: Icons.add,
  ),
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios Botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card_outlined,
  ),
  MenuItem(
    title: 'Progress Indicators ',
    subTitle: 'Generales y Controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'SnackBar y Dialogs ',
    subTitle: 'Indicadores en Pantalla',
    link: '/snackbar',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated Container ',
    subTitle: 'Stateful Widget Animado',
    link: '/animated',
    icon: Icons.check_box_rounded,
  ),

  MenuItem(
    title: 'Ui Controls + Titles',
    subTitle: 'Una serie de controles de flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),

  MenuItem(
    title: 'introducción a una aplicación',
    subTitle: 'Pequeño tutorial introductorio',
    link: '/tutorial',
    icon: Icons.accessibility_new_rounded,
  ),

  MenuItem(
    title: 'Infinite Scroll y Pull to Refresh',
    subTitle: 'Scroll infinito con un API',
    link: '/infinite',
    icon: Icons.list_alt_rounded,
  ),
  
  MenuItem(
    title: 'Cambiar tema',
    subTitle: 'cambiar tema de la aplicación',
    link: '/theme-change',
    icon: Icons.color_lens,
  ),


];
