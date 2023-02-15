#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
#include<ctype.h>
int a[100];
int main() {
    int n;
    scanf("%d",&n);
    int m;
    scanf("%d",&m);
    for (int i = 0;i < n;i++) {
        a[i] = 1;
    }
    int i = 0;
    int cnt = 0;
    int mark = 0;
    while(1) {
        i = i%n;
        if (cnt == m - 1) {
            if (a[i] == 1) {
                a[i] = 0;
                cnt = 0;
                mark++;
                printf("%d\n",i+1);
                i++;
            } else {
                i++;
            }
        }
        else {
            if (a[i] == 1) {
                cnt++;
                i++;
            }
            else {
                i++;
            }
        }
        if (mark >= n) {
            break;
        }
    }
    system("pause");
    return 0;
}