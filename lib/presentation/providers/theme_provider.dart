import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/app_theme/app_theme.dart';

final colorListProvider = Provider((ref) => colorList);

final isDarkmodeProvider = StateProvider((ref) => false);


// un simple int
final selectedColorProvider = StateProvider((ref) => 0);