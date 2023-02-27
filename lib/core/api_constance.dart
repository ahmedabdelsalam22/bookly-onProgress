class ApiEndPoints {
  static String baseUrl = "https://localhost:44374/api/";
  static String getAllBooks = "${baseUrl}books/";
  static String getTopRated = "${getAllBooks}GetTopRated";
  static String searchInBooks(String searchText) => "$getAllBooks$searchText";
}
