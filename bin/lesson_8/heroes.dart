import 'game_character.dart';
import 'boss.dart';
import 'rpg_game.dart';

abstract class Hero extends GameCharacter {
  SuperAbility ability;
  Hero(super.name, super.health, super.damage, this.ability);

  void attack(Boss boss) {
    boss.health -= damage;
  }

  void applySuperPower(Boss boss, List<Hero> heroes);

  @override
  String toString() { 
    return '${this.runtimeType} ${super.toString()}';
  }
}

class Warrior extends Hero {
  Warrior(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.criticalDamage);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    int coeff = RpgGame.random.nextInt(3) + 2; // 2, 3, 4
    int criticalDamage = damage * coeff;
    boss.health -= criticalDamage;
    print('Warrior $name hits critically for $criticalDamage');
  }
}

class Magic extends Hero {
  Magic(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.boost);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    // Erzhan comment
  }
}

class Medic extends Hero {
  int healPoints;
  Medic(String name, int health, int damage, this.healPoints)
    : super(name, health, damage, SuperAbility.heal);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.health > 0 && hero != this) { // hero != this to not heal self
        hero.health += healPoints;
      }
    }
  }
}

class Berserk extends Hero {
  int blockedDamage = 0;
  Berserk(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.blockRevert);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    boss.health -= blockedDamage;
    print('Berserk $name reverted $blockedDamage damage back to Boss');
  }
}
class Ludoman extends Hero {
  Ludoman(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.gamble);
      @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    int gambleResult1 = RpgGame.random.nextInt(6)+1;
    int gambleResult2 = RpgGame.random.nextInt(6)+1;
    if (gambleResult1 == gambleResult2) {
      int extraDamage = gambleResult2*gambleResult1;
      boss.health -= extraDamage;}
     else {
     int selfTeamDamage = gambleResult2 + gambleResult1;
     List<Hero> damagedHeroes = heroes.where((hero) => hero.health > 0).toList();
     if (damagedHeroes.isNotEmpty) {
       int randomIndex = RpgGame.random.nextInt(damagedHeroes.length);
       damagedHeroes[randomIndex].health -= selfTeamDamage;
       print('Ludoman $name gambled and caused $selfTeamDamage damage to ${damagedHeroes[randomIndex].name}');
     }}}}
     
  
