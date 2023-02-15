#include<stdio.h>
#include<stdlib.h>
int a[10][10];
int b[10][10];
int main() {
    int n;
    int h = 0;
    int l = 0;
    scanf("%d",&n);
    for (int i = 0;i < 2 * n * n;i++ ) {
        int num;
        scanf("%d",&num);
       if (i < n*n) {
            a[h][l] = num;
            if ((l+1) % n == 0) {
                l = 0;
                h++;
            }
            else {
                l++;
            }
       }
       else {
            if (i == n * n) {
                h = 0;
                l = 0;
            }
            b[h][l] = num;
            if ((i+1) % n == 0) {
                l = 0;
                h++;
            }
            else {
                l++;
            }
       } 
    }
    int sum = 0;
    for (int i = 0;i < n;i++) {
        for (int k = 0;k <n;k ++) {
            for(int j = 0;j <n ;j++) {
                sum = sum + a[i][j] * b[j][k];
            }
            printf("%d",sum);
            sum = 0;
            if (k == n - 1) {
                printf("\n");
            }
            else {
                printf(" ");
            }
        }
    }
    system("pause");
    return 0;
}