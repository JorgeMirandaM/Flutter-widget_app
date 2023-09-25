


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

final isDarkmodeProvider= StateProvider<bool>((ref) => false);

// Listado de colores inmutable
final colorListProvider= Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);

// Un objeto de tipo AppTheme (custom)
final themeNotifierProvider= StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());


class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = Estado = new AppTheme()
  ThemeNotifier(): super( AppTheme());

  void toggleDarkmode(){
    state= state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex){
    state=state.copyWith(selectedColor: colorIndex);
  }
  
}