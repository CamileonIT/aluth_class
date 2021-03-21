class Tutor {
  int id;
  String name;
  String qualification;
  int contact;
  int whatsapp;
  String lastUpdated;
  String classType;

  Tutor(
    this.id,
    this.name,
    this.qualification,
    this.contact,
    this.whatsapp,
    this.lastUpdated,
    this.classType,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'name': name,
      'qualification': qualification,
      'contact': contact,
      'whatsapp': whatsapp,
      'lastUpdated': lastUpdated,
      'classType': classType,
    };
    return map;
  }

  Tutor.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    qualification = map['qualification'];
    contact = map['contact'];
    whatsapp = map['whatsapp'];
    lastUpdated = map['lastUpdated'];
    classType = map['classType'];
  }
}
