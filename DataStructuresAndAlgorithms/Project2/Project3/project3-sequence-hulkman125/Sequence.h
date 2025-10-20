//
// Created by harve on 10/1/2025.
//

#ifndef SEQUENCEDEBUG_SEQUENCE_H
#define SEQUENCEDEBUG_SEQUENCE_H

#include "SequenceNode.h"
#include <string>
#include <iostream>


class Sequence {
public:
   SequenceNode* head;
   SequenceNode* tail;
   size_t sizeOfSequence = 0;

   /**
    *
    *
    * @param size
    */
   Sequence(size_t size = 0);
   Sequence(const Sequence& s);

   void clearList();

   ~Sequence();  //destructor
   Sequence& operator=(const Sequence& s);

   /**
    *
    * @param position
    * @return
    */
   std::string& operator[](size_t position);
   void push_back(std::string item);
   void pop_back();
   void insert(size_t position, std::string item);
   std::string front() const;
   std::string back() const;
   bool empty() const;
   size_t size() const;
   void clear();
   void erase(size_t position);
   void erase(size_t position, size_t count);

   friend std::ostream& operator<<(std::ostream& os, const Sequence& s); //friend method


};
#endif //SEQUENCEDEBUG_SEQUENCE_H
