class cardInhalt {

  String image;
  String title;
  String route;

  cardInhalt({ this.image, this.title, this.route });
}

class vokEntries {
  final int id;
  final String vok_en;
  final String vok_de;
  final String vok_ko;
  static const String TABLENAME = "myvok";

  vokEntries({this.id, this.vok_en, this.vok_de, this.vok_ko});

  Map<String, dynamic> toMap() {
    return {'id': id, 'englisch': vok_en, 'deutsch': vok_de, 'kommentar': vok_ko};
  }
}
