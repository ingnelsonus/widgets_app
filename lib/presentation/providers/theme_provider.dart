import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Listado de colores inmutalbe.
final colorListProvider = Provider((ref) => colorList);

//Un simple booleano.
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

final selectedColorProvider = StateProvider<int>((ref) => 0);
