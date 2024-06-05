class Note {
  int? _id;
  late String _title;
  late String _description;
  late String _date;
  late int _priority;

  Note(this._title, this._date, this._priority, [this._description = '']);

  Note.withId(this._id, this._title, this._date, this._priority,
      [this._description = '']);

  int? get id => _id;
  String get title => _title;
  String get description => _description;
  String get date => _date;
  int get priority => _priority;

  set title(String newTitle) {
    if (newTitle.length <= 256) {
      _title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 256) {
      _description = newDescription;
    }
  }

  set date(String newDate) {
    _date = newDate;
  }

  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      _priority = newPriority;
    }
  }

  // Convert a Note object to Map object
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'title': _title,
      'description': _description,
      'date': _date,
      'priority': _priority,
    };
    if (_id != null) {
      map['id'] = _id;
    }
    return map;
  }

  // Extract Note object from Map object
  Note.fromMapObject(Map<String, dynamic> map) {
    _id = map['id'];
    _title = map['title'];
    _description = map['description'];
    _date = map['date'];
    _priority = map['priority'];
  }
}
