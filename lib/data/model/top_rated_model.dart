class TopRatedModel {
  int? _id;
  String? _title;
  int? _year;
  double? _rate;
  int? _price;
  int? _reviewersNumbers;
  String? _description;
  String? _quote;
  String? _poster;
  int? _genreId;
  String? _genreName;

  TopRatedModel(
      {int? id,
      String? title,
      int? year,
      double? rate,
      int? price,
      int? reviewersNumbers,
      String? description,
      String? quote,
      String? poster,
      int? genreId,
      String? genreName}) {
    if (id != null) {
      this._id = id;
    }
    if (title != null) {
      this._title = title;
    }
    if (year != null) {
      this._year = year;
    }
    if (rate != null) {
      this._rate = rate;
    }
    if (price != null) {
      this._price = price;
    }
    if (reviewersNumbers != null) {
      this._reviewersNumbers = reviewersNumbers;
    }
    if (description != null) {
      this._description = description;
    }
    if (quote != null) {
      this._quote = quote;
    }
    if (poster != null) {
      this._poster = poster;
    }
    if (genreId != null) {
      this._genreId = genreId;
    }
    if (genreName != null) {
      this._genreName = genreName;
    }
  }

  int? get id => _id;

  set id(int? id) => _id = id;

  String? get title => _title;

  set title(String? title) => _title = title;

  int? get year => _year;

  set year(int? year) => _year = year;

  double? get rate => _rate;

  set rate(double? rate) => _rate = rate;

  int? get price => _price;

  set price(int? price) => _price = price;

  int? get reviewersNumbers => _reviewersNumbers;

  set reviewersNumbers(int? reviewersNumbers) =>
      _reviewersNumbers = reviewersNumbers;

  String? get description => _description;

  set description(String? description) => _description = description;

  String? get quote => _quote;

  set quote(String? quote) => _quote = quote;

  String? get poster => _poster;

  set poster(String? poster) => _poster = poster;

  int? get genreId => _genreId;

  set genreId(int? genreId) => _genreId = genreId;

  String? get genreName => _genreName;

  set genreName(String? genreName) => _genreName = genreName;

  TopRatedModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _year = json['year'];
    _rate = json['rate'];
    _price = json['price'];
    _reviewersNumbers = json['reviewersNumbers'];
    _description = json['description'];
    _quote = json['quote'];
    _poster = json['poster'];
    _genreId = json['genreId'];
    _genreName = json['genreName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['title'] = this._title;
    data['year'] = this._year;
    data['rate'] = this._rate;
    data['price'] = this._price;
    data['reviewersNumbers'] = this._reviewersNumbers;
    data['description'] = this._description;
    data['quote'] = this._quote;
    data['poster'] = this._poster;
    data['genreId'] = this._genreId;
    data['genreName'] = this._genreName;
    return data;
  }
}
