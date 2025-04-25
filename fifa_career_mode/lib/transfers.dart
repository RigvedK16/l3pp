import 'package:fifa_career_mode/players.dart';
// import 'package:fifa_career_mode/team.dart';
import 'package:fifa_career_mode/Simulate.dart';
import 'dart:math';
import 'dart:io';

class Transfers {
  Random random = Random();
  Simulate simulate;
  Transfers(this.simulate);

  int fwd = 3, mid = 3, def = 4, gk = 1;

  List<Player> recommendations = [];

  List<Player> availablePlayers = [
    Player(name: "Ollie Watkins", value: 56, pos: "fwd"),
    Player(name: "James Maddison", value: 48, pos: "mid"),
    Player(name: "Jarrod Bowen", value: 40, pos: "fwd"),
    Player(name: "Callum Wilson", value: 20, pos: "fwd"),
    Player(name: "Ivan Toney", value: 52, pos: "fwd"),
    Player(name: "Dominic Solanke", value: 36, pos: "fwd"),
    Player(name: "Alexander Isak", value: 60, pos: "fwd"),
    Player(name: "Kaoru Mitoma", value: 44, pos: "fwd"),
    Player(name: "João Pedro", value: 32, pos: "fwd"),
    Player(name: "Eberechi Eze", value: 44, pos: "mid"),
    Player(name: "Douglas Luiz", value: 40, pos: "mid"),
    Player(name: "Pascal Groß", value: 16, pos: "mid"),
    Player(name: "Declan Rice", value: 88, pos: "mid"),
    Player(name: "Harvey Barnes", value: 32, pos: "fwd"),
    Player(name: "Pedro Neto", value: 40, pos: "fwd"),
    Player(name: "Bryan Mbeumo", value: 30, pos: "fwd"),
    Player(name: "Evan Ferguson", value: 52, pos: "fwd"),
    Player(name: "Rodrigo Bentancur", value: 36, pos: "mid"),
    Player(name: "James Ward-Prowse", value: 30, pos: "mid"),
    Player(name: "Gabriel Magalhães", value: 48, pos: "def"),
    Player(name: "William Saliba", value: 64, pos: "def"),
    Player(name: "Ben White", value: 44, pos: "def"),
    Player(name: "Sven Botman", value: 48, pos: "def"),
    Player(name: "Pervis Estupiñán", value: 32, pos: "def"),
    Player(name: "Tyrone Mings", value: 20, pos: "def"),
    Player(name: "Marc Cucurella", value: 24, pos: "def"),
    Player(name: "Rico Henry", value: 28, pos: "def"),
    Player(name: "Lucas Paquetá", value: 56, pos: "mid"),
    Player(name: "Emiliano Buendía", value: 22, pos: "mid"),
    Player(name: "Moussa Diaby", value: 52, pos: "fwd"),
    Player(name: "Joachim Andersen", value: 28, pos: "def"),
    Player(name: "Tariq Lamptey", value: 14, pos: "def"),
    Player(name: "Conor Gallagher", value: 40, pos: "mid"),
    Player(name: "Boubacar Kamara", value: 36, pos: "mid"),
    Player(name: "Kurt Zouma", value: 20, pos: "def"),
    Player(name: "Matt Doherty", value: 6, pos: "def"),
    Player(name: "Nick Pope", value: 24, pos: "gk"),
    Player(name: "Robert Sánchez", value: 20, pos: "gk"),
    Player(name: "Bernd Leno", value: 16, pos: "gk"),
    Player(name: "Jordan Pickford", value: 28, pos: "gk"),
    Player(name: "André-Frank Zambo Anguissa", value: 40, pos: "mid"),
    Player(name: "Jesús Navas", value: 6, pos: "def"),
    Player(name: "Sergej Milinković-Savić", value: 48, pos: "mid"),
    Player(name: "Randal Kolo Muani", value: 52, pos: "fwd"),
    Player(name: "Gonçalo Ramos", value: 44, pos: "fwd"),
    Player(name: "Jonathan David", value: 48, pos: "fwd"),
    Player(name: "Dani Olmo", value: 44, pos: "mid"),
    Player(name: "Florian Wirtz", value: 72, pos: "mid"),
    Player(name: "Youssoufa Moukoko", value: 24, pos: "fwd"),
    Player(name: "Jeremie Frimpong", value: 40, pos: "def"),
    Player(name: "Grimaldo", value: 28, pos: "def"),
    Player(name: "Josko Gvardiol", value: 72, pos: "def"),
    Player(name: "Manuel Ugarte", value: 40, pos: "mid"),
    Player(name: "Federico Chiesa", value: 44, pos: "fwd"),
    Player(name: "Rafael Leão", value: 72, pos: "fwd"),
    Player(name: "Adrien Rabiot", value: 28, pos: "mid"),
    Player(name: "Ismaël Bennacer", value: 40, pos: "mid"),
  ];

  void getCount() {
    for (Player player in simulate.myTeam) {
      if (player.pos == 'fwd') {
        fwd++;
      } else if (player.pos == 'mid') {
        mid++;
      } else if (player.pos == 'def') {
        def++;
      } else if (player.pos == 'mid') {
        gk++;
      }
    }
  }

  void fetchPos(String? position) {
    for (Player player in availablePlayers) {
      if (player.pos == position) {
        recommendations.add(player);
      }
    }
  }

  void recommendPlayers() {
    print('Which position to re-inforce (fwd,mid,def,gk):');
    String? input = stdin.readLineSync();
    fetchPos(input);
    print('Our scouts have recommended these players:');
    for (Player player in recommendations) {
      print('${player.name}    ${player.value}');
    }
  }

  void buyPlayers() {
    int flag = 0;
    recommendPlayers();
    print('Enter player name to purchase...');
    String? playerPurchased = stdin.readLineSync();
    for (Player player in recommendations) {
      if (player.name == playerPurchased) {
        flag++;
        if (simulate.myteam.budget - player.value > 0) {
          simulate.myteam.budget -= player.value;
          simulate.myTeam.add(player);
          availablePlayers.remove(player);
          recommendations.remove(player);
          getCount();
          print('${player.name} to Man united here we go...Deal done..');
        } else {
          print('The player signing is going over-budget!');
        }
        break;
      }
    }
    if (flag == 0) {
      print('Enter a valid name...');
    }
    for (Player player in simulate.myTeam) {
      print('${player.name}');
    }
    print('Budget: ${simulate.myteam.budget}');
  }
}

class Sales extends Transfers {
  Sales(super.simulate);
  List<Player> sales = [];
  // @override
  // void recommendPlayers() {}

  bool checkPlayerShortage() {
    if (fwd < 3 || mid < 3 || def < 4 || gk < 1) {
      return true;
    }
    return false;
  }

  void sellPlayers() {
    int flag = 0;
    print('Enter player to sell:');
    String? inputPlayer = stdin.readLineSync();
    for (Player player in simulate.myTeam) {
      if (player.name == inputPlayer) {
        flag++;
        if (checkPlayerShortage()) {
          print('There should be minimum 3 fwds, 3 mid, 3 defs, 1 gk');
        } else {
          simulate.myteam.budget += player.value;
          simulate.myTeam.remove(player);
          availablePlayers.add(player);
          print('${player.name} is released from your squad...');
          getCount();
        }
        break;
      }
    }
    if (flag == 0) {
      print('Enter a valid name!');
    }
    print('Budget: ${simulate.myteam.budget}');
  }
}
