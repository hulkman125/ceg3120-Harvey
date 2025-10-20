//
// Created by harve on 9/17/2025.
//
#include <cstdlib>
#include <ctime>

#ifndef PROJECT2_CHARACTER_H
#define PROJECT2_CHARACTER_H


#include <string>
using namespace std;

class Character {
private:
    // private fields of the Character
    string name;
    string role;
    int hitpoints;
    int attackBonus;
    int damageBonus;
    int armorClass;
    
public:
    // methods of the class
    ostream& print(ostream& os);
    void attack(Character& otherCharacter);
    void damage(int amount);
    int getHealth();
    string getRole();

    //additions I made for myself
    void setName(string health);
    void setRole(string role);
    void setHealth(int hitpoints);
    void setDamageBonus(int damageBonus);
    void setAttackBonus(int ATT);
    void setArmorClass(int AR);

    string getName();
    int getAttack();
    int getDamageBonus();
    int getArmorClass();

    Character(); // default constructor
};
#endif //PROJECT2_CHARACTER_H