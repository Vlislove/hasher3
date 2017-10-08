//
// Created by Vlad on 08.10.2017.
//

#ifndef HASHER3_FUNCTIONS_H
#define HASHER3_FUNCTIONS_H

#include <iostream>
#include <vector>
#include <fstream>

unsigned long Crc32(char *filename);

unsigned long SumHash(char *filename);

void Help();

void Mistake();

#endif //HASHER3_FUNCTIONS_H
