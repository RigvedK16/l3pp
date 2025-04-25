import 'package:fifa_career_mode/Simulate.dart';
import 'package:fifa_career_mode/transfers.dart';
import 'dart:io';

void main() {
  bool flag = false;
  String? choice;
  Simulate simulate = Simulate();
  Transfers transfers = Transfers(simulate);
  Sales sale = Sales(simulate);
  while (!flag) {
    print('Enter 1 to simulate your season...');
    String? input = stdin.readLineSync();
    if (input == 'X' || input == 'x') {
      flag = true;
    } else if (input == '1') {
      simulate.simulateStandings();
      simulate.allocateBudgetAndValue();
      while (choice != 'X' || choice != 'x') {
        print('To buy players press B, To sell press S, Press X to exit!');
        choice = stdin.readLineSync();
        if (choice == 'B' || choice == 'b') {
          transfers.buyPlayers();
        } else if (choice == 'S' || choice == 's') {
          sale.sellPlayers();
        } else if (choice == 'X' || choice == 'x') {
          break;
        } else {
          print('Enter a valid option');
        }
      }
    }
  }
}
