#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "binary.h"

int main(int argc, char *const argv[]) {
    int flag_x = 0, flag_o = 0, flag_b = 0;
    int c;

    while ((c = getopt(argc, argv, "xob")) != -1) {
        switch (c) {
            case 'x':
                flag_x = 1;
                break;
            case 'o':
                flag_o = 1;
                break;
            case 'b':
                flag_b = 1;
                break;
            case '?':
                printf("Usage: %s [-x] [-o] [-b] number...\n", argv[0]);
                return 1;
        }
    }

    for (int i = optind; i < argc; i++) {
        int num = atoi(argv[i]);
        printf("Number: %d\n", num);
        
        if (flag_x) {
            printf(" Hex: %x\n", num);
        }
        if (flag_o) {
            printf(" Oct: %o\n", num);
        }
        if (flag_b) {
            printf(" Bin: ");
            binary(num);
            printf("\n");
        }
        printf("\n");
    }

    return 0;
}
