class Movie{

  String _title;
  String _categorie;
  String _imagePath;
  String _date;

  Movie(this._title, this._categorie, this._imagePath, this._date);

  String get imagePath => _imagePath;


  String get date => _date;

  set date(String value) {
    _date = value;
  }

  set imagePath(String value) {
    _imagePath = value;
  }

  String get categorie => _categorie;

  set categorie(String value) {
    _categorie = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }
}