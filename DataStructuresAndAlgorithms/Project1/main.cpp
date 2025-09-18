/*
*Program
 *Written by
 *@Tyler
 *@Raymond
 *@Harvey
 */
/*
 * Project Name:
 * Project 1 - Simulating Dice Rolls
 */
/*
 * Description:
 *rolls 2 dice and adds them together,
 *then it checks how many times that result is used
 */

#include <iostream>

using namespace std;

int main() {


    srand(time(nullptr));
    int NumberOfRolls = 0;

    int total[11] = {0}; //clearing out the array with 0s

    int* arrPntr = total; // address for the array

    cout << "How many rolls?.....";
    cin >> NumberOfRolls; // inputing the number of rolls
    cout << "Simulating " << NumberOfRolls << " rolls.... " << endl << "Results: " << endl; //outputing number of rolls

    //rolling the 2 dice
    for (int x = 0; x < NumberOfRolls; x++) {

        int firstRoll = (rand() % 6) + 1; // first dice roll 1-6
        int secondRoll = (rand() % 6) + 1; // second dice roll 1-6
        int totalRoll = firstRoll + secondRoll; // adding the 2 dice together

        total[totalRoll - 2] = total[totalRoll - 2] + 1; //incrementing the slot on the array
    }

    //outputing each possible results for each slot in the array
    for (int y = 0; y < 11; y++) {
        cout << (y + 2) << " was rolled " << *(arrPntr + y) << " time(s)" << endl;
    }
    return 0;
}