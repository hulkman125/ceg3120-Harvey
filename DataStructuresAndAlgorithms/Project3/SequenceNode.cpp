//
// Created by harve on 10/1/2025.
//
#include <iostream>
#include <string>
#include "Sequence.h"
using namespace std;


//----------------------------------------------------------------
// SequenceNode: the default constructor to set the next, prev, and item to null
//    Returns:  none
//    Parameters: none
//----------------------------------------------------------------
SequenceNode::SequenceNode() : next(nullptr), prev(nullptr) {

}
/// parameterized constructor, next and prev are set to nullptr and the
/// node's element is set to the given value
///
/// //----------------------------------------------------------------
// SequenceNode: the secondary constructor to set the next and prev to null, but item will be whatever is in the parameter
//    Returns:  none
//    Parameters: item (string)
//----------------------------------------------------------------
SequenceNode::SequenceNode(std::string item) : next(nullptr), prev(nullptr), item(item) {
}

