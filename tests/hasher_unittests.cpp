//
// Created by Vlad on 08.10.2017.
//

#include "gtest/gtest.h"
#include "src/functions.h"
#include <fstream>

TEST(TestHash, zeroline_crc32) {
std::ofstream zl("zeroline.txt");
zl.close();
unsigned long result = Crc32((char*)"zeroline.txt");
EXPECT_EQ(0, result);
}

TEST(TetsHash, wrongfile_crc32) {
char *name[1] = {"totally_not_input.txt"};

unsigned long result = Crc32(name[1]);

EXPECT_EQ(1, result);
}

TEST(TestHash, zeroline_sumhash) {
std::ofstream zl("zeroline.txt");
zl.close();
unsigned long result = SumHash((char*)"zeroline.txt");
EXPECT_EQ(0, result);
}

TEST(TetsHash, wrongfile_sumhash) {
char *name[1] = {"totally_not_input.txt"};

unsigned long result = SumHash[name[1]];

EXPECT_EQ(1, result);
}

TEST(TetsHash, good_string_crc32) {
std::ofstream zl("line.txt");
zl >> "1001010110101";
zl.close();
unsigned long result = Crc32((char*)"line.txt");
EXPECT_EQ(303073275, result);
}