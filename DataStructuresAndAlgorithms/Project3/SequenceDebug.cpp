/**
 * SequenceDebug.cpp
 * Project 3
 * CS 3100
 *
 * In this file, you will write your tests as you implement Sequence. If you are using CLion, you need to select
 * SequenceDebug from the drop-down menu next to the Build (hammer icon) if it is on SequenceTestHarness
 */
#include <iostream>

#include "Sequence.h"

using namespace std;

int main() {

    Sequence X(0);
    X.push_back("milk");
    X.push_back("eggs");
    X.push_back("bananas");
    //X.pop_back();

    Sequence Y(0);
    Y.push_back("bread");
    Y.push_back("cookies");
    Y.push_back("cake");
    Y.push_back("cheese");
    Y.push_back( "chocolate");


    cout << X << endl;
    cout << Y << endl;


    /*cout << Y[4] << endl;

    //Y.erase(4,2);


    //Y.clear();

    cout << "Front is:   " << Y.front() << endl;
    cout << "Back is:    " << Y.back() << endl;

    if (Y.empty()) {
        cout<< "Y is empty" << endl;
    }
    else {
        cout << "Y is not empty" << endl;
    }

    cout << "Size is:     " << Y.size() << endl;
    Y.erase(2,2);
    cout << Y << endl;
    Y = X;

    cout << Y << endl;
    cout << "Size is:     " << Y.size() << endl;
    Y.clear();
    if (Y.empty()) {
        cout<< "Y is empty" << endl;
    }
    else {
        cout << "Y is not empty" << endl;
    }*/

    return 0;
}