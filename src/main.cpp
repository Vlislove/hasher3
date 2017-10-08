#include <cstdlib>
#include <iostream>
#include "functions.h"

int main(int argc, char **argv) {
    if ((std::string)argv[1] == (std::string)"help") {
        Help();
    } else if (argc == 3) {
        if ((std::string)argv[1] == (std::string)"crc32") {
            unsigned long crc32 = Crc32(argv[2]);
            std::cout << crc32 << std::endl;
        }else if ((std::string)argv[1] == (std::string)"SumHash") {
            unsigned long sh = SumHash(argv[2]);
            std::cout << sh << std::endl;
        } else {
            Mistake();
        }
    } else {
        Mistake();
    }
    system("pause");
    return 0;
}
// 303073275