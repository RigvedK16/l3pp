import 'package:fifa_career_mode/players.dart';
import 'package:fifa_career_mode/team.dart';
import 'dart:math';

class Simulate {
  Random random = Random();
  MyTeam myteam = MyTeam(name: 'Man United', standings: 1, budget: 50);
  List<Player> myTeam = [
    Player(name: "David de Gea", value: 20, pos: "gk"),
    Player(name: "Wan-Bissaka", value: 15, pos: "def"),
    Player(name: "Raphaël Varane", value: 30, pos: "def"),
    Player(name: "Lisandro Martínez", value: 25, pos: "def"),
    Player(name: "Luke Shaw", value: 20, pos: "def"),
    Player(name: "Casemiro", value: 35, pos: "mid"),
    Player(name: "Bruno Fernandes", value: 40, pos: "mid"),
    Player(name: "Christian Eriksen", value: 15, pos: "mid"),
    Player(name: "Marcus Rashford", value: 30, pos: "fwd"),
    Player(name: "Antony", value: 25, pos: "fwd"),
    Player(name: "Amad", value: 20, pos: "fwd"),
  ];

  int calculateValue() {
    int teamValue = 0;
    for (Player player in myTeam) {
      teamValue += player.value;
    }
    return teamValue;
  }

  void simulateStandings() {
    int teamValue = calculateValue();
    if (teamValue > 250) {
      myteam.standings = random.nextInt(10) + 1;
    } else {
      myteam.standings = random.nextInt(10) + 11;
    }
    print('Your team has finished no. ${myteam.standings} in the table\n');
  }

  void allocateBudgetAndValue() {
    if (myteam.standings <= 4) {
      myteam.budget += 10;
      for (Player player in myTeam) {
        player.value += random.nextInt(15) + 1;
      }
    } else if (myteam.standings >= 12) {
      myteam.budget += 50;
      for (Player player in myTeam) {
        if(player.value>15){
            player.value -= random.nextInt(15) + 1;
        }
      }
    } else {
      List<String> p = ['inc', 'dec'];
      String temp = p[random.nextInt(2)];
      if (temp == 'inc') {
        if (myteam.budget < 200) {
          myteam.budget += 20;
        }
      } else {
        if (myteam.budget > 40) {
          myteam.budget -= 40;
        }
      }
      for (Player player in myTeam) {
        player.value += random.nextInt(5) + 1;
      }
    }
    print("Your budget for the current season is: ${myteam.budget}\n");
    // print("Player Valuations:\n");
    // for (Player player in myTeam) {
    //   print("${player.name}   ${player.value}");
    // }
  }
}
