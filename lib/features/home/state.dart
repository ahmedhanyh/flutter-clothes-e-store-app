abstract class HomeState {}

class HomeInitial extends HomeState {}
class HomeLoading extends HomeState {}
class HomeLoaded extends HomeState {
  final List<dynamic> categories;
  final List<dynamic> products;

  HomeLoaded({required this.categories, required this.products});
}
class HomeFailure extends HomeState {
  final String errorMessage;
  HomeFailure(this.errorMessage);
}

class ProductsLoading extends HomeState {}
class ProductsSuccess extends HomeState {}
class ProductsFailure extends HomeState {
  final String errorMessage;
  ProductsFailure(this.errorMessage);
}

class CategoriesLoading extends HomeState {}
class CategoriesSuccess extends HomeState {}
class CategoriesFailure extends HomeState {
  final String errorMessage;
  CategoriesFailure(this.errorMessage);
}

class DetailsInitial extends HomeState {}
class DetailsLoading extends HomeState {}
class DetailsLoaded extends HomeState {}
class DetailsFailure extends HomeState {}