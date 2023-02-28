class ApiEndPoints {
  static String baseUrl = "https://localhost:44374/api/";
  static String getAllBooks = "${baseUrl}books/getAllBooks";
  static String getAllGenres = "${baseUrl}genres/getAllGenres";
  static String getTopRated = "${baseUrl}books/getTopRated";
  static String getBookByGenre(genreName) => "${baseUrl}books/$genreName";
  static String searchInBooks(String searchText) => "$getAllBooks/$searchText";
}
