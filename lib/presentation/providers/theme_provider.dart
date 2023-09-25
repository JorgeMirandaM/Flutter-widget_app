


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

final isDarkmodeProvider= StateProvider<bool>((ref) => false);

// Listado de colores inmutable
final colorListProvider= Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);