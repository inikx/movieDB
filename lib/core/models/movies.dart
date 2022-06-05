class Movie{

  String _title;
  String _categorie;
  String _imagePath;

  Movie(this._title, this._categorie, this._imagePath);

  String get imagePath => _imagePath;

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