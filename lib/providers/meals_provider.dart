import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/data/dummy_data.dart';

// This Provider is used to provide the static list of meals to the widget tree.
final mealsProvider = Provider((ref) {
  return dummyMeals;
});

