main() {
  //[5] solution
  Fighter destroyer = Fighter();

  //[6] solution
  destroyer.weapon = "Laser";
  destroyer.remainingFirePower = 10;
  destroyer.name = "Destroyer";
  print("${destroyer.name} Position is ${destroyer.position}");
  destroyer.moveRight();
  print("${destroyer.name} Position is ${destroyer.position}");

  //[7] solution
  Spaceship falcon = Spaceship();
  //print(falcon.weapon);
  //---we can not use 'weapon' because 'weapon' isn't defined for the class 'Spaceship'.

  print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[8] solution
  destroyer.fire();
  print(
      "${destroyer.name} Remaining FirePower is ${destroyer.remainingFirePower}");
  destroyer.fire();
  print(
      "${destroyer.name} Remaining FirePower is ${destroyer.remainingFirePower}");
  destroyer.fire();
  print(
      "${destroyer.name} Remaining FirePower is ${destroyer.remainingFirePower}");
  destroyer.fire();
  print(
      "${destroyer.name} Remaining FirePower is ${destroyer.remainingFirePower}");
  destroyer.fire();
  print(
      "${destroyer.name} Remaining FirePower is ${destroyer.remainingFirePower}");

  print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[9] solution
  ShieldedShip Defender = ShieldedShip();
  Defender.name = "Defender";
  Defender.weapon = "Cannon";
  Defender.moveRight();
  print("${Defender.name} Position is ${Defender.position}");
  Defender.fire();
  print(
      "${Defender.name} Remaining FirePower is ${Defender.remainingFirePower}");

  print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[10] solution
  Defender..wasHit();
  print(
      "${Defender.name} shield Strength is ${Defender.shieldStrength} and health is ${Defender.health}");

  print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[11] solution
  Defender..wasHit();
  print(
      "${Defender.name} shield Strength is ${Defender.shieldStrength} and health is ${Defender.health}");
  Defender..wasHit();
  print(
      "${Defender.name} shield Strength is ${Defender.shieldStrength} and health is ${Defender.health}");
  Defender..wasHit();
  print(
      "${Defender.name} shield Strength is ${Defender.shieldStrength} and health is ${Defender.health}");
  Defender..wasHit();
  print(
      "${Defender.name} shield Strength is ${Defender.shieldStrength} and health is ${Defender.health}");
  Defender..wasHit();
  print(
      "${Defender.name} shield Strength is ${Defender.shieldStrength} and health is ${Defender.health}");
}

class Spaceship {
  String name = "";
  int health = 0;
  int position = 0;

  moveLeft() {
    position--;
  }

  moveRight() {
    position++;
  }

  wasHit() {
    health -= 5;
    if (health <= 0) {
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again?");
    }
  }
}

//[5] solution
class Fighter extends Spaceship {
  String weapon = "";
  int remainingFirePower = 5;

  //[8] solution
  fire() {
    if (remainingFirePower > 0) {
      remainingFirePower--;
    } else {
      print("You have no more fire power.");
    }
  }
}

//[9] solution
class ShieldedShip extends Fighter {
  int shieldStrength = 25;

  //[10] solution
  @override
  wasHit() {
    if (shieldStrength > 0) {
      shieldStrength -= 5;
    } else {
      //[11] solution
      super.wasHit();
    }
  }
}
