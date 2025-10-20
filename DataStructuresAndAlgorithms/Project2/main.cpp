#include <iostream>
#include <cstdlib>
#include <ctime>
#include "Character.h"

/*
*Program
 *Written by
 *@Tyler
 *@Raymond
 *@Harvey
 */
/*
 * Project Name:
 * Project 2 - Fight Sim
 */
/*
 * Description:
 * buildint a combat simulator for
 * a simplified roll playing game (RPG)
 */
using namespace std;
int main() {
    srand(time(nullptr)); // setting a random int
    Character Player_A; // first Player
    Character Player_B; // second player

    //names of each player
    string NameA = "";
    string NameB = "";

    string inP; // used for string input
    int inPB; // used for integer input

    //prompting the user for the first name and assigning it to the Player
    cout << "First character name?" << endl;
    cin >> inP;
    Player_A.setName(inP);

    //prompt and set role
    cout  << endl << Player_A.getName() <<"'s role?" << endl;
    cin >> inP;
    Player_A.setRole(inP);

    //prompt and set health
    cout  << endl << NameA << "The " << Player_A.getRole() << "'s hit points?" << endl;
    cin >> inPB;
    Player_A.setHealth(inPB);

    //prompt and set attackBonus
    cout  << endl << NameA << "The " << Player_A.getRole() << "'s attack bonus?" << endl;
    cin >> inPB;
    Player_A.setAttackBonus(inPB);

    //prompt and set damage bonus
    cout  << endl << NameA << "The " << Player_A.getRole() << "'s damage bonus?" << endl;
    cin >> inPB;
    Player_A.setDamageBonus(inPB);

    //prompt and set armorclass
    cout  << endl << NameA << "The " << Player_A.getRole() << "'s armor class?" << endl;
    cin >> inPB;
    Player_A.setArmorClass(inPB);

    //outputing the characters stats
    cout << "Character summary" << endl << "---------------" << endl;
    cout << NameA << " the " << Player_A.getRole() << endl;

    cout << "HP: " << Player_A.getHealth() << endl;
    cout << "AB: " << Player_A.getAttack() << endl;
    cout << "DB: " << Player_A.getDamageBonus() << endl;
    cout << "AC " << Player_A.getArmorClass() << endl;





    //prompting the user for the first name and assigning it to the Player
    cout << "Second character name?" << endl;
    cin >> inP;
    Player_B.setName(inP);

    //prompt and set role
    cout << endl << Player_B.getName() <<"'s role?" << endl;
    cin >> inP;
    Player_B.setRole(inP);

    //prompt and set health
    cout << endl << NameB << "The " << Player_B.getRole() << "'s hit points?" << endl;
    cin >> inPB;
    Player_B.setHealth(inPB);

    //prompt and set attackBonus
    cout << endl << NameB << "The " << Player_B.getRole() << "'s attack bonus?" << endl;
    cin >> inPB;
    Player_B.setAttackBonus(inPB);

    //prompt and set damage bonus
    cout << endl << NameB << "The " << Player_B.getRole() << "'s damage bonus?" << endl;
    cin >> inPB;
    Player_B.setDamageBonus(inPB);

    //prompt and set armorclass
    cout << endl << NameB << "The " << Player_B.getRole() << "'s armor class?" << endl;
    cin >> inPB;
    Player_B.setArmorClass(inPB);

    //outputing the characters stats
    cout << "Character summary" << endl << "---------------" << endl;
    cout << NameB << " the " << Player_B.getRole() << endl;

    cout << "HP: " << Player_B.getHealth() << endl;
    cout << "AB: " << Player_B.getAttack() << endl;
    cout << "DB: " << Player_B.getDamageBonus() << endl;
    cout << "AC " << Player_B.getArmorClass() << endl << endl;




    cout << "Simulated Combat:" << endl;
    bool isPlayerATurn = true; //if playerA's turn, then true
    // loop as long as both players has health greater than 0
    while ((Player_A.getHealth() > 0) && (Player_B.getHealth() > 0)) {
        if (isPlayerATurn) {
            Player_A.print(cout); // calling the print method to output the player is attacking
            Player_A.attack(Player_B); // calling their attack method
            isPlayerATurn = !isPlayerATurn; // reversing the boolean variable
        }
        else {
            Player_B.print(cout); // calling the print method to output the player is attacking
            Player_B.attack(Player_A); // calling their attack method
            isPlayerATurn = !isPlayerATurn; // reversing the boolean variable
        }
    }

    //once loop exits the winner will be outputed
    if (Player_A.getHealth() <= 0) {
        cout << Player_B.getName() << " wins!" << endl;
    }
    else {
        cout << Player_A.getName() << " wins!" << endl;
    }

    return 0;
}