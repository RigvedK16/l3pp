class Team {
  String name;
  int standings;

  Team({required this.name, required this.standings});

  // void display() {
  //   print('$standings.$name\n');
  // }
}

class MyTeam extends Team {
  int budget;

  MyTeam({required super.name, required super.standings, required this.budget});
}
