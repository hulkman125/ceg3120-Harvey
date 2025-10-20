//
// Created by harve on 10/1/2025.
//

#ifndef SEQUENCEDEBUG_SEQUENCENODE_H
#define SEQUENCEDEBUG_SEQUENCENODE_H

#endif //SEQUENCEDEBUG_SEQUENCENODE_H

#include <string>
#include <iostream>
#include "Sequence.h"

using namespace std;

class SequenceNode {
public:

    SequenceNode();
    SequenceNode(string item);
    // to make it easier, we can make the data members public so we don't need
    // getters and setters
    SequenceNode* next; // pointer to next Node. If node is the tail, next is
    // nullptr
    SequenceNode* prev; // pointer to previous Node. If node is the head, prev is
    // nullptr
    std::string item; // the element being stored in the node
    //default constructor, ensure next and prev are nullptr



};