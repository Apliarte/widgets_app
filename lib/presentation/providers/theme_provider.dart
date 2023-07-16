import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/app_theme/app_theme.dart';



//Lista de colores imputable
final colorListProvider = Provider((ref) => colorList);


// un simple buleano
final isDarkmodeProvider = StateProvider((ref) => false);


// un simple int
final selectedColorProvider = StateProvider((ref) => 0);







// Un objeto de tipo AppTheme
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier()
  
  );


// Controller o notifier
class ThemeNotifier extends StateNotifier <AppTheme>{
  // STATE = Estado = New AppTheme();
  ThemeNotifier(): super(AppTheme());
  void toogleDarkmode(){



  }


void changeColorIndex (){



  
}

}
