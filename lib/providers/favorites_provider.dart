import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

// This Provider processes dyanmically changing data and provides it to the widget tree.
class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      // This line of code removes the meal from the list of favorites.
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      // This line of code adds the meal to the list of favorites.
      state = [...state, meal];
      return true;
    }
  }
}

// This method is used to create a StateNotifierProvider that will be used to provide the FavoriteMealsNotifier to the widget tree.
final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});
