class Movie {
  int? _id;
  String? _title;
  int? _year;
  int? _rate;
  String? _description;
  String? _qoute;
  String? _poster;
  int? _genreId;
  String? _genreName;

  Movie(
      {int? id,
      String? title,
      int? year,
      int? rate,
      String? description,
      String? qoute,
      String? poster,
      int? genreId,
      String? genreName}) {
    if (id != null) {
      _id = id;
    }
    if (title != null) {
      _title = title;
    }
    if (year != null) {
      _year = year;
    }
    if (rate != null) {
      _rate = rate;
    }
    if (description != null) {
      _description = description;
    }
    if (qoute != null) {
      _qoute = qoute;
    }
    if (poster != null) {
      _poster = poster;
    }
    if (genreId != null) {
      _genreId = genreId;
    }
    if (genreName != null) {
      _genreName = genreName;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get title => _title;
  set title(String? title) => _title = title;
  int? get year => _year;
  set year(int? year) => _year = year;
  int? get rate => _rate;
  set rate(int? rate) => _rate = rate;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get qoute => _qoute;
  set qoute(String? qoute) => _qoute = qoute;
  String? get poster => _poster;
  set poster(String? poster) => _poster = poster;
  int? get genreId => _genreId;
  set genreId(int? genreId) => _genreId = genreId;
  String? get genreName => _genreName;
  set genreName(String? genreName) => _genreName = genreName;

  Movie.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _year = json['year'];
    _rate = json['rate'].toInt();
    _description = json['description'];
    _qoute = json['qoute'];
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
    data['description'] = this._description;
    data['qoute'] = this._qoute;
    data['poster'] = this._poster;
    data['genreId'] = this._genreId;
    data['genreName'] = this._genreName;
    return data;
  }
}
