#include <stdio.h>
#include "binary.h"

void binary(int value) {
    if (value == 0) {
        printf("0");
        return;
    }
    
    int bin[32];
    int i = 0;
    
    // 2진수 변환 (양수 기준 처리)
    while (value > 0) {
        bin[i] = value % 2;
        value = value / 2;
        i++;
    }
    
    // 역순으로 출력하여 올바른 2진수 형태 생성
    for (int j = i - 1; j >= 0; j--) {
        printf("%d", bin[j]);
    }
}
