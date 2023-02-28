abstract class BookState {}

class BookInitial extends BookState {}

class GetBooksLoadingState extends BookState {}

class GetBooksSuccessState extends BookState {}

class GetBooksErrorState extends BookState {}

class GetGenresLoadingState extends BookState {}

class GetGenresSuccessState extends BookState {}

class GetGenresErrorState extends BookState {}

class GetSearchLoadingState extends BookState {}

class GetSearchSuccessState extends BookState {}

class GetSearchErrorState extends BookState {}

class GetTopRatedLoadingState extends BookState {}

class GetTopRatedSuccessState extends BookState {}

class GetTopRatedErrorState extends BookState {}

class BooksByGenreLoadingState extends BookState {}

class BooksByGenreSuccessState extends BookState {}

class BooksByGenreErrorState extends BookState {}
