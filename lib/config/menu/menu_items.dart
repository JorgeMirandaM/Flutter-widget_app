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
      subTitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'ProgressIndicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y dialogos',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated container',
      subTitle: 'Satteful widget animado',
      link: '/animated',
      icon: Icons.check_box_outlined),
  MenuItem(
      title: 'UI Controls + Title',
      subTitle: 'Una serie de controles en Flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Introducción a la aplicacion',
      subTitle: 'Pequeño tutorial introductorio',
      link: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'InfiniteScroll y Pull',
      subTitle: 'Listas infinitas y pull to refresh ',
      link: '/infinite',
      icon: Icons.list_alt_rounded)
];
