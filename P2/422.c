#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
#include<ctype.h>
int main() {
    int m;
    int flag = 0;
    scanf("%d",&m);
    for (int i = 2;i < m;i++ ) {
        if (m % i == 0) {
            flag = 1;
            break;
        }
        if (i*i>m) {
            break;
        }
    }
    if (flag == 1) {
        printf("0");
    }
    else {
        printf("1");
    }
    system("pause");
    return 0;
}