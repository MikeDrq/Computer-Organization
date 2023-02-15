#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
int a[100][100];
int c[100][100];
#include<ctype.h>
int main() {
    int m1,n1,m2,n2;
    int sum = 0;
    scanf("%d%d%d%d",&m1,&n1,&m2,&n2);
    for (int i = 0;i < m1;i ++) {
        for (int j = 0; j < n1; j++) {
            scanf("%d",&a[i][j]);
        }
    }
    for (int i = 0;i < m2;i ++) {
        for (int j = 0; j < n2; j++) {
            scanf("%d",&c[i][j]);
        }
    }
    for (int i = 0;i < m1 - m2 + 1;i++) {
        for (int j = 0;j < n1 - n2 + 1;j ++) {
            for (int k = 0;k < m2;k++) {
                for (int z = 0;z < n2;z++) {
                    sum = sum + a[i+k][j+z]*c[k][z]; 
                }
            }
            printf("%d",sum);
            sum = 0;
            if (j == n1-n2) {
                printf("\n");
            }
            else{
                printf(" ");
            }
        }
    }
    system("pause");
    return 0;
}