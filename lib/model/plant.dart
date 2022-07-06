class Plant {
  String name;
  String photo;
  DateTime datePlanted;
  DateTime? dateFinishedPlanting;

  Plant(this.name, this.photo, this.datePlanted, {this.dateFinishedPlanting});

  String get getName => name;
  String get getPhoto => photo;
  DateTime get getDatePlanted => datePlanted;
  DateTime? get getDateFinishedPlanting => dateFinishedPlanting;
  set setName(name) => this.name = name;
  set setPhoto(photo) => this.photo = photo;
  set setDatePlanted(datePlanted) => this.datePlanted = datePlanted;
  set setDateFinishedPlanting(dateFinishedPlanting) =>
      this.dateFinishedPlanting = dateFinishedPlanting;

  @override
  String toString() {
    return "Nome: ${name} \n" +
        "Photo: ${photo} \n" +
        "datePlanted: ${datePlanted} \n" +
        "dateFinishedPlanting: ${dateFinishedPlanting} \n";
  }
}
