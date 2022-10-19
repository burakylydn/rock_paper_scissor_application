import 'dart:io';
import 'dart:math';
import 'dart:async';

enum Move { Rock, Paper, Scissors }

void main() {
  
  print("Welcome to the rock paper scissors application");
  int time_u=3;
  int pcscore = 0;
  int uscore = 0;
  stdout.write("Please enter your name : ");
  var username = stdin.readLineSync();
  print("Are you ready ? $username starting game...");
  
  for (int i=3;i>0;i--){
    
    print(i);
  }

  while (true) {
    final rnd = Random();
    
    stdout.write(
        'enter for Rock => R     for Paper => P      for Scissors => S      for Quit => Q ');
    final input = stdin.readLineSync();
    if (input == 'R' || input == 'P' || input == 'S') {

      Move userMove;
      if (input == 'R') {
        userMove = Move.Rock;
      } else if (input == 'P') {
        userMove = Move.Paper;
      } else {
        userMove = Move.Scissors;
      }
      
      var random = rnd.nextInt(3);
      var pcMove = Move.values[random];
      
      print('Entered Value: $input');
      print('Your choice : ${userMove.name}');
      print('Pc choice   : ${pcMove.name}');
      
      if (userMove == pcMove) {
        print("DRAW ! ");
        print('"COMPUTER SCORE : $pcscore | $username SCORE : $uscore ");');
      }
      
      else if (userMove == Move.Paper && pcMove == Move.Rock ||
          userMove == Move.Rock && pcMove == Move.Scissors ||
          userMove == Move.Scissors && pcMove == Move.Paper) {
        print('YOU WİN  !!! $username CONGRATULATIONS');
        uscore++;
        print('"COMPUTER SCORE : $pcscore | $username SCORE : $uscore ");');
      }
      
      else {
        print('YOU LOSE  $username TRY AGAIN');
        pcscore++;
        print('"COMPUTER SCORE : $pcscore | $username SCORE : $uscore ");');
      }
    }
    
    else if (input == 'Q') {
      break;
    }
    
    else {
      print(
          'invalid input please enter R for rock, P for paper, S for scissors !!!!!! ');
    }
  }
}
