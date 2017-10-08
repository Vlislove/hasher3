//
// Created by Vlad on 08.10.2017.
//

#include <cstring>
#include "functions.h"

unsigned long Crc32(char *filename) {
    unsigned long crc_table[256];
    unsigned long crc;

    for (int i = 0; i < 256; i++) {
        crc = (unsigned long)i;
        for (int j = 0; j < 8; j++)
            crc = crc & 1 ? (crc >> 1) ^ 0xEDB88320UL : crc >> 1;

        crc_table[i] = crc;
    }

    std::ifstream ifs(filename, std::ifstream::in);
    if (!ifs) {
        std::cerr << "ERROR: cannot open " << filename << "!" << std::endl;
        return 1;
    }
    char ch = '\0';
    crc = 0xFFFFFFFFUL;
    while (ifs>>ch && ifs.peek() >= 0)
        crc = crc_table[(crc ^ ch) & 0xFF] ^ (crc >> 8);
    ifs.close();
    return crc ^ 0xFFFFFFFFUL;
}

unsigned long SumHash(char *filename) {
    unsigned long hsum = 0;
    std::ifstream ifs(filename, std::ifstream::in);
    if (!ifs) {
        std::cerr << "ERROR: cannot open " << filename << "!" << std::endl;
        return 1;
    }

    char ch = '\0';
    while (ifs.peek() >= 0) {
        unsigned long ptr = 0;
        for (int i = 0; i < 4; ++i) {
            ptr *= 256;
            if (ifs>>ch && ifs.peek() >= 0) {
                ptr += ch;
            }
        }
        hsum += ptr;
    }
    ifs.close();
    return hsum;
}

void Help() {
    std::cout << std::endl << "'Help' instructions: " << std::endl
              << "Type './hasher3 -m crc32 *filename*' for crc32" << std::endl
              << "Type './hasher3 -m SumHash *filename*' for 32-bit hash sum using 32-bit data blocks" << std::endl
              << "Type './hasher3 -m help to see this instructions again" << std::endl;
}

void Mistake() {
    std::cerr << "You`ve done a mistake!" << std::endl;
    Help();
}
