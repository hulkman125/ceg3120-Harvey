//
// Created by harve on 9/17/2025.
//
#include <iostream>
#include "Character.h"
#include <cstdlib>
#include <ctime>


Character::Character() {
    //default once the default constructor is called
    name = "";
    role = "";
    hitpoints = 0;
    attackBonus = 0;
    damageBonus = 0;
    armorClass = 0;
}

ostream& Character::print(ostream& os) {

    //outputing the character's name
    os << getName() << " attacks!" << endl;
   return os;

}

void Character::attack(Character& otherCharacter) {

    int dice = (rand() % 20) + 1; //randomly selecting a number from 1 - 20

    //if (attackBonus >= otherCharacter.getArmorClass()) {
        cout << "Attack roll: " << dice << " + " << attackBonus << " = "<< (dice + attackBonus) << " --> ";
        if((attackBonus + dice) >= otherCharacter.getArmorClass()) { // if the attack hits
            cout << "HIT!" << endl;
            int dice2 = (rand() % 10) + 1; //randomly selecting a number from 1 - 10
            cout << "Damage: " << dice2 << " + " << damageBonus << " = " << (dice2 + damageBonus) << endl;
            otherCharacter.damage(dice2 + damageBonus); // damaging the other player
            cout << otherCharacter.name << " has " << otherCharacter.hitpoints << " hit points remaining" << endl << endl; // how many HP the turn playyer has
        }
        else {
            cout << "MISS!" << endl << endl;
        }
    //}
}


void Character::damage(int amount) {
    hitpoints = hitpoints - amount;
    if (hitpoints < 0) { // if HP is less then 0, set it to 0
        hitpoints = 0;
    }

}

int Character::getHealth() {
    return hitpoints;
}

string Character::getName() {
return name;
}

string Character::getRole() {
    return role;
}

int Character::getAttack() {
    return attackBonus;
}
int Character::getDamageBonus() {
    return damageBonus;
}
int Character::getArmorClass() {
    return armorClass;
}

void Character::setName(string name) {
    this->name = name;
}

void Character::setHealth(int health) {
    this->hitpoints = health;
}

void Character::setAttackBonus(int ATT) {
    this->attackBonus = ATT;
}

void Character::setDamageBonus(int damageBonus) {
    this->damageBonus = damageBonus;
}

void Character::setArmorClass(int armorClass) {
    this->armorClass = armorClass;
}

void Character::setRole(string role) {
    this->role = role;
}

