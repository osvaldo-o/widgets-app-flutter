import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const List<MenuItem> appMenuItems = [
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'ProgressIndicators',
      subTitle: 'Generales y controladores',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y dialogos',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated container',
      subTitle: 'Stateful widget animado',
      link: '/animated',
      icon: Icons.animation_rounded),
  MenuItem(
      title: 'UI Controls',
      subTitle: 'UI controls with flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'App Tutorial',
      subTitle: 'Tutotial de la aplicacion',
      link: '/tutorial',
      icon: Icons.tune_outlined),
  MenuItem(
    title: 'Infinite scroll',
    subTitle: 'Listas infinitas y pull to refresh',
    link: '/infinite',
    icon: Icons.list_alt_rounded,
  ),
  MenuItem(
    title: 'Counter screen',
    subTitle: 'Counter with riverPod',
    link: '/counter',
    icon: Icons.add,
  ),
  MenuItem(
    title: 'Theme changer',
    subTitle: 'Theme changer screen',
    link: '/theme-changer',
    icon: Icons.color_lens_outlined,
  ),
];
